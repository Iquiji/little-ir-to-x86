use std::fs::File;
use std::io::Write;

use little_intermediate_representation::{Translator, StaticData};
use little_parser::Parser;

fn main() -> Result<(), Box<dyn std::error::Error>> {
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
    // 6 -
    // 7 -
    // 8 -
    // 9 -

    let mut file = File::create("out/out.asm")?;

    writeln!(&mut file,"section .data")?;

    for static_item in translator.static_data.iter() {
        static_data_convert_to_handles_in_file(&mut file, static_item)?;
    }

    writeln!(&mut file,"\n\nsection .text")?;

    Ok(())
}

fn static_data_convert_to_handles_in_file(file: &mut File,static_item: (&String,&StaticData)) -> Result<(),Box<dyn std::error::Error>>{
    println!("static data item: {:#?}", static_item);

    match static_item.1 {
        little_intermediate_representation::StaticData::Bool(boolean) => {
            writeln!(
                file,
                "{}_actual dd {} ; Boolean",
                static_item.0,
                if *boolean { "0x1" } else { "0x0" }
            )?;
            writeln!(file, "{}_data_ptr_struc:", static_item.0,)?;
            writeln!(
                file,
                "   istruc data_ptr
    at .type, dd    2
    at .mem, dd     {}_actual
iend\n
                ",
                static_item.0
            )?;
        }
        little_intermediate_representation::StaticData::Integer(integer) => {
            writeln!(file, "{}_actual dd {} ; Integer", static_item.0, integer)?;
            writeln!(file, "{}_data_ptr_struc:", static_item.0,)?;
            writeln!(
                file,
                "    istruc data_ptr
    at .type, dd    1
    at .mem, dd     {}_actual
iend\n
                ",
                static_item.0
            )?;
        }
        little_intermediate_representation::StaticData::String(string) => {
            writeln!(file, r#"{}_actual db "{}",Oh ; String"#, static_item.0, string)?;
            writeln!(file, "{}_data_ptr_struc:", static_item.0,)?;
            writeln!(
                file,
                "    istruc data_ptr
    at .type, dd    4
    at .mem, dd     {}_actual
iend\n
                ",
                static_item.0
            )?;
        },
        little_intermediate_representation::StaticData::Identifier(identifier) => {
            writeln!(file, r#"{}_actual db "{}",0h ; Identifier"#, static_item.0, identifier)?;
            writeln!(file, "{}_data_ptr_struc:", static_item.0,)?;
            writeln!(
                file,
                "    istruc data_ptr
    at .type, dd    3
    at .mem, dd     {}_actual
iend\n
                ",
                static_item.0
            )?;
        },
        little_intermediate_representation::StaticData::List(_list) => {
            
            unimplemented!();

        },
    }

    Ok(())
}
