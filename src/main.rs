use std::fs::File;
use std::io::Write;

use little_intermediate_representation::{Translator, StaticData, LinearBlock};
use little_parser::Parser;

fn main() -> Result<(), Box<dyn std::error::Error>> {

    // name in global scope and name in actulal asm
    let primitives: Vec<String> = vec!["car".to_owned(),"cdr".to_owned(),"cons".to_owned(),"display".to_owned()];

    println!("Hello, world!");

    let mut parser = Parser::init_with_string(r#"(display '5)"#);
    let ast = parser.re_program();

    let mut translator = Translator::default();

    let _incomplete_res = translator.ast_to_intermediate_representation(ast);

    println!("translator: {:#?}", translator);

    // # Data Type Ids:
    // 0 - 
    // 1 - Number -> Ptr
    // 2 - Boolean -> Ptr
    // 3 - Identifier -> Ptr
    // 4 - String -> Ptr
    // 5 - List -> Ptr to LinkedList
    // 6 - Function -> Ptr InitialisedFuncitonPointer
    // 7 -
    // 8 -
    // 9 - Null / No Data

    let mut file = File::create("gen/gen.asm")?;

    writeln!(&mut file,r#"%include "../includes.asm""#)?;
    writeln!(&mut file,r#"%include "../helper_functions.asm""#)?;

    writeln!(&mut file,"section .data")?;

    for static_item in translator.static_data.iter() {
        static_data_convert_to_handles_in_file(&mut file, static_item)?;
    }

    // write global scope head:

    writeln!(&mut file,"global_scope:
    istruc scope_overlord
        at scope_overlord.parent, dd 0 ; global scope doesnt have parents!
        at scope_overlord.scope_data, dd global_scope_data_ll_0
    iend")?;
    writeln!(&mut file,"current_scope dd global_scope")?;

    for primitive in primitives.iter().enumerate(){
        // generate global scope:
        // iterative linked list for the start
        // One overlord node for each because each needs its own node
        // but we must put all the primitives together into one as well for the global scope
        writeln!(&mut file,"\nprimitive_{}_init_func_ptr_struc:
        istruc init_func_pointer
            at init_func_pointer.actual_func_ptr, dd primitive_{}_asm_actual ; actual pointer
            at init_func_pointer.scope, dd primitive_{}_init_scope ; ptr to scope
        iend
primitive_{}_init_scope:
        istruc scope_overlord
            at scope_overlord.parent, dd global_scope
            at scope_overlord.scope_data, dd 0 ; uninitialized
        iend
    
primitive_{}_global_scope_string_ident:
        db \"{}\", 0h",primitive.1,primitive.1,primitive.1,primitive.1,primitive.1,primitive.1)?;

        writeln!(&mut file,"global_scope_data_ll_{}:
        istruc scope_member
            at scope_member.next, dd {} ; none if last
            at scope_member.identifier, dd primitive_{}_global_scope_string_ident ; ptr to string ident
            at scope_member.data, dd primitive_{}_init_func_ptr_struc ; ptr to function
        iend",primitive.0,if primitive.0 == primitives.len()-1{"0".to_owned()}else{"global_scope_data_ll_".to_owned() + &(primitive.0 + 1).to_string()},primitive.1,primitive.1)?;
    }

    

    writeln!(&mut file,"\nsection .bss")?;
    for reg in 0..=translator.register_counter{
        writeln!(&mut file,"{}: resd 1","vreg".to_owned() + &reg.to_string())?;
    }
    
    writeln!(&mut file,"\nsection .text")?;
    writeln!(&mut file,"extern printf,malloc")?;
    writeln!(&mut file,"global main")?;
    writeln!(&mut file,"\nmain:")?;

    let main_block = translator.lambda_map.get("main").ok_or("err")?;
        
    if let LinearBlock { ident, program } = main_block {
        writeln!(&mut file,"    push ebp ; hello there
    mov ebp,esp\n")?;

        for instruction in program{
            ir_instruction_generate_code_in_file(&mut file, instruction.clone())?;
        }
        writeln!(&mut file,"   leave ; bye
    ret")?;
    }

    Ok(())
}
fn ir_instruction_generate_code_in_file(file: &mut File,ir_instruction: little_intermediate_representation::LinearInstruction) -> Result<(),Box<dyn std::error::Error>>{
    
    match ir_instruction{
        little_intermediate_representation::LinearInstruction::AcceptToFormals { static_formals_list } => todo!(),
        little_intermediate_representation::LinearInstruction::NewScopeAttachedToAndReplacingCurrent => todo!(),
        little_intermediate_representation::LinearInstruction::PopScopeAndReplaceWithUpper => todo!(),
        little_intermediate_representation::LinearInstruction::StaticRefToRegister { static_ref, to_reg } => {
            writeln!(file,"    mov dword[{}],{}_data_ptr_struc ; LinearInstruction::StaticRefToRegister\n",to_reg.virtual_ident,static_ref.refname)?;
        },
        little_intermediate_representation::LinearInstruction::PushToStack { register } => {
            writeln!(file,"    push dword[{}] ; LinearInstruction::PushToStack\n",register.virtual_ident)?;
        },
        little_intermediate_representation::LinearInstruction::PopFromStack { register } => {
            writeln!(file,"    pop esi ; LinearInstruction::PopFromStack
    mov [{}],esi\n",register.virtual_ident)?;
        },
        little_intermediate_representation::LinearInstruction::LinkedListInit { output_reg } => {
            writeln!(file,"    push dword 0 ; LinearInstruction::LinkedListInit
    call init_linked_list
    pop esi
    mov [{}],esi\n",output_reg.virtual_ident)?;
        },
        little_intermediate_representation::LinearInstruction::LinkedListAdd { linked_list_reg, input_reg } => {
            writeln!(file,"    mov esi, dword[{}] ; linked_list_reg ; LinearInstruction::LinkedListAdd
    mov edi, dword[{}] ; input_reg
    push esi 
    push dword edi
    call add_to_linked_list
    add esp,8\n",linked_list_reg.virtual_ident,input_reg.virtual_ident)?;
        },
        little_intermediate_representation::LinearInstruction::Assign { identifier, from_reg, scope } => todo!(),
        little_intermediate_representation::LinearInstruction::Call { output_reg, function_pointer, arguments } => {
            writeln!(file,"    mov esi,[{}] ; LinearInstruction::Call
    mov edi,[{}]
    push __empty_to_output_to ; output here 
    push edi
    push esi
    call auxilary_call_function
    add esp,8
    pop esi
    mov [{}],esi\n",function_pointer.virtual_ident,arguments.virtual_ident,output_reg.virtual_ident)?;
        },
        little_intermediate_representation::LinearInstruction::Lookup { identifier, to_reg, scope } => {
            writeln!(file,"    push dword 0 ; LinearInstruction::Lookup
    push {}_actual
    push {}
    call lookup_in_scope_and_parents
    add esp, 8
    pop esi
    mov dword[{}],esi\n",identifier.refname,match scope{
    little_intermediate_representation::Scope::Global => "global_scope",
    little_intermediate_representation::Scope::Current => "current_scope",
    little_intermediate_representation::Scope::Custom(_) => todo!(),
},to_reg.virtual_ident)?;

        },
        little_intermediate_representation::LinearInstruction::Cond { condition, branc_if_true } => todo!(),
        little_intermediate_representation::LinearInstruction::Return { value } => todo!(),
        little_intermediate_representation::LinearInstruction::InitializeFunctionPointer { function, from_scope, outpu_reg } => todo!(),
    }

    Ok(())
}


fn static_data_convert_to_handles_in_file(file: &mut File,static_item: (&String,&StaticData)) -> Result<(),Box<dyn std::error::Error>>{
    println!("static data item: {:#?}", static_item);

    match static_item.1 {
        little_intermediate_representation::StaticData::Bool(boolean) => {
            helper_write_actual_data_and_pointer(file,static_item.0,if *boolean { "1" } else { "0" },"db",2)?;

        }
        little_intermediate_representation::StaticData::Integer(integer) => {
            helper_write_actual_data_and_pointer(file,static_item.0,&integer.to_string(),"dd",1)?;

        }
        little_intermediate_representation::StaticData::String(string) => {
            helper_write_actual_data_and_pointer(file,static_item.0,string,"db",4)?;

        },
        little_intermediate_representation::StaticData::Identifier(identifier) => {
            helper_write_actual_data_and_pointer(file,static_item.0,identifier,"db",3)?;
        },
        little_intermediate_representation::StaticData::List(_list) => {
            
            unimplemented!();

        },
    }

    Ok(())
}

fn helper_write_actual_data_and_pointer(file: &mut File,name: &str,data_str: &str,db_or_dd: &str,type_num: u32,) -> Result<(),Box<dyn std::error::Error>>{
    writeln!(file, r#"{}_actual {} {}{}{} ; Autogen"#, name,db_or_dd,if db_or_dd == "db"{r#"""#}else{""}, data_str,if db_or_dd == "db"{r#"",0h"#}else{""})?;
    writeln!(file, "{}_data_ptr_struc:", name,)?;
    writeln!(
        file,
        "    istruc data_ptr
        at data_ptr.type, dd    {}
        at data_ptr.mem, dd     {}_actual
    iend\n
        ",
        type_num,
        name
    )?;

    Ok(())
}
