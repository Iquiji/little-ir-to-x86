use std::fs::File;
use std::io::Write;

use little_intermediate_representation::{Translator, StaticData};
use little_parser::Parser;

fn main() -> Result<(), Box<dyn std::error::Error>> {

    // name in global scope and name in actulal asm
    let primitives: Vec<(String,String)> = vec![];

    println!("Hello, world!");

    let mut parser = Parser::init_with_string(r#"('5)"#);
    let ast = parser.re_program();

    let mut translator = Translator::default();

    let _incomplete_res = translator.ast_to_intermediate_representation(ast);

    println!("translator: {:#?}", translator);

    // # Data Type Ids:
    // 0 - Null / No Data
    // 1 - Number -> Ptr
    // 2 - Boolean -> Ptr
    // 3 - Identifier -> Ptr
    // 4 - String -> Ptr
    // 5 - List -> Ptr to LinkedList
    // 6 - Function -> Ptr InitialisedFuncitonPointer
    // 7 -
    // 8 -
    // 9 -

    let mut file = File::create("out/out.asm")?;

    writeln!(&mut file,r#"%include "includes.asm""#)?;

    writeln!(&mut file,"section .data")?;

    for static_item in translator.static_data.iter() {
        static_data_convert_to_handles_in_file(&mut file, static_item)?;
    }
    for primitive in primitives.iter().enumerate().rev(){
        // generate global scope:
        // iterative linked list for the start
        // One overlord node for each because each needs its own node
        // but we must put all the primitives together into one as well for the global scope

    }

    writeln!(&mut file,"\nsection .text")?;

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
