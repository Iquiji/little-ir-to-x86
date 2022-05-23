%include "../includes.asm"
%include "../helper_functions.asm"
section .data
static1_actual dd 1887 ; Autogen
static1_data_ptr_struc:
    istruc data_ptr
        at data_ptr.type, dd    1
        at data_ptr.mem, dd     static1_actual
    iend

        
static2_actual db "display",0h ; Autogen
static2_data_ptr_struc:
    istruc data_ptr
        at data_ptr.type, dd    3
        at data_ptr.mem, dd     static2_actual
    iend

        
static0_actual db "display",0h ; Autogen
static0_data_ptr_struc:
    istruc data_ptr
        at data_ptr.type, dd    3
        at data_ptr.mem, dd     static0_actual
    iend

        
static3_actual db "hello world!",0h ; Autogen
static3_data_ptr_struc:
    istruc data_ptr
        at data_ptr.type, dd    4
        at data_ptr.mem, dd     static3_actual
    iend

        
global_scope:
    istruc scope_overlord
        at scope_overlord.parent, dd 0 ; global scope doesnt have parents!
        at scope_overlord.scope_data, dd global_scope_data_ll_0
    iend
current_scope dd global_scope

primitive_car_init_func_ptr_struc:
        istruc init_func_pointer
            at init_func_pointer.actual_func_ptr, dd primitive_car_asm_actual ; actual pointer
            at init_func_pointer.scope, dd primitive_car_init_scope ; ptr to scope
        iend
primitive_car_init_scope:
        istruc scope_overlord
            at scope_overlord.parent, dd global_scope
            at scope_overlord.scope_data, dd 0 ; uninitialized
        iend
    
primitive_car_global_scope_string_ident:
        db "car", 0h
global_scope_data_ll_0:
        istruc scope_member
            at scope_member.next, dd global_scope_data_ll_1 ; none if last
            at scope_member.identifier, dd primitive_car_global_scope_string_ident ; ptr to string ident
            at scope_member.data, dd primitive_car_init_func_ptr_struc ; ptr to function
        iend

primitive_cdr_init_func_ptr_struc:
        istruc init_func_pointer
            at init_func_pointer.actual_func_ptr, dd primitive_cdr_asm_actual ; actual pointer
            at init_func_pointer.scope, dd primitive_cdr_init_scope ; ptr to scope
        iend
primitive_cdr_init_scope:
        istruc scope_overlord
            at scope_overlord.parent, dd global_scope
            at scope_overlord.scope_data, dd 0 ; uninitialized
        iend
    
primitive_cdr_global_scope_string_ident:
        db "cdr", 0h
global_scope_data_ll_1:
        istruc scope_member
            at scope_member.next, dd global_scope_data_ll_2 ; none if last
            at scope_member.identifier, dd primitive_cdr_global_scope_string_ident ; ptr to string ident
            at scope_member.data, dd primitive_cdr_init_func_ptr_struc ; ptr to function
        iend

primitive_cons_init_func_ptr_struc:
        istruc init_func_pointer
            at init_func_pointer.actual_func_ptr, dd primitive_cons_asm_actual ; actual pointer
            at init_func_pointer.scope, dd primitive_cons_init_scope ; ptr to scope
        iend
primitive_cons_init_scope:
        istruc scope_overlord
            at scope_overlord.parent, dd global_scope
            at scope_overlord.scope_data, dd 0 ; uninitialized
        iend
    
primitive_cons_global_scope_string_ident:
        db "cons", 0h
global_scope_data_ll_2:
        istruc scope_member
            at scope_member.next, dd global_scope_data_ll_3 ; none if last
            at scope_member.identifier, dd primitive_cons_global_scope_string_ident ; ptr to string ident
            at scope_member.data, dd primitive_cons_init_func_ptr_struc ; ptr to function
        iend

primitive_display_init_func_ptr_struc:
        istruc init_func_pointer
            at init_func_pointer.actual_func_ptr, dd primitive_display_asm_actual ; actual pointer
            at init_func_pointer.scope, dd primitive_display_init_scope ; ptr to scope
        iend
primitive_display_init_scope:
        istruc scope_overlord
            at scope_overlord.parent, dd global_scope
            at scope_overlord.scope_data, dd 0 ; uninitialized
        iend
    
primitive_display_global_scope_string_ident:
        db "display", 0h
global_scope_data_ll_3:
        istruc scope_member
            at scope_member.next, dd 0 ; none if last
            at scope_member.identifier, dd primitive_display_global_scope_string_ident ; ptr to string ident
            at scope_member.data, dd primitive_display_init_func_ptr_struc ; ptr to function
        iend

section .bss
vreg0: resd 1
vreg1: resd 1
vreg2: resd 1
vreg3: resd 1
vreg4: resd 1
vreg5: resd 1
vreg6: resd 1
vreg7: resd 1
vreg8: resd 1
vreg9: resd 1
vreg10: resd 1
vreg11: resd 1
vreg12: resd 1
vreg13: resd 1
vreg14: resd 1
vreg15: resd 1
vreg16: resd 1

section .text
extern printf,malloc
global main

main:
    push ebp ; hello there
    mov ebp,esp

    push dword 0 ; LinearInstruction::Lookup
    push static0_actual
    push current_scope
    call lookup_in_scope_and_parents
    add esp, 8
    pop esi
    mov dword[vreg0],esi

    push dword[vreg0] ; LinearInstruction::PushToStack

    push dword 0 ; LinearInstruction::LinkedListInit
    call init_linked_list
    pop esi
    mov [vreg1],esi

    push dword[vreg1] ; LinearInstruction::PushToStack

    mov dword[vreg2],static1_data_ptr_struc ; LinearInstruction::StaticRefToRegister

    push dword[vreg2] ; LinearInstruction::PushToStack

    pop esi ; LinearInstruction::PopFromStack
    mov [vreg3],esi

    pop esi ; LinearInstruction::PopFromStack
    mov [vreg4],esi

    mov esi, dword[vreg4] ; linked_list_reg ; LinearInstruction::LinkedListAdd
    mov edi, dword[vreg3] ; input_reg
    push esi 
    push dword edi
    call add_to_linked_list
    add esp,8

    push dword[vreg4] ; LinearInstruction::PushToStack

    pop esi ; LinearInstruction::PopFromStack
    mov [vreg5],esi

    pop esi ; LinearInstruction::PopFromStack
    mov [vreg6],esi

    mov esi,[vreg6] ; LinearInstruction::Call
    mov edi,[vreg5]
    push __empty_to_output_to ; output here 
    push edi
    push esi
    call auxilary_call_function
    add esp,8
    pop esi
    mov [vreg7],esi

    push dword[vreg5] ; LinearInstruction::PushToStack

    push dword 0 ; LinearInstruction::Lookup
    push static2_actual
    push current_scope
    call lookup_in_scope_and_parents
    add esp, 8
    pop esi
    mov dword[vreg8],esi

    push dword[vreg8] ; LinearInstruction::PushToStack

    push dword 0 ; LinearInstruction::LinkedListInit
    call init_linked_list
    pop esi
    mov [vreg9],esi

    push dword[vreg9] ; LinearInstruction::PushToStack

    mov dword[vreg10],static3_data_ptr_struc ; LinearInstruction::StaticRefToRegister

    push dword[vreg10] ; LinearInstruction::PushToStack

    pop esi ; LinearInstruction::PopFromStack
    mov [vreg11],esi

    pop esi ; LinearInstruction::PopFromStack
    mov [vreg12],esi

    mov esi, dword[vreg12] ; linked_list_reg ; LinearInstruction::LinkedListAdd
    mov edi, dword[vreg11] ; input_reg
    push esi 
    push dword edi
    call add_to_linked_list
    add esp,8

    push dword[vreg12] ; LinearInstruction::PushToStack

    pop esi ; LinearInstruction::PopFromStack
    mov [vreg13],esi

    pop esi ; LinearInstruction::PopFromStack
    mov [vreg14],esi

    mov esi,[vreg14] ; LinearInstruction::Call
    mov edi,[vreg13]
    push __empty_to_output_to ; output here 
    push edi
    push esi
    call auxilary_call_function
    add esp,8
    pop esi
    mov [vreg15],esi

    push dword[vreg13] ; LinearInstruction::PushToStack

    leave ; bye
    ret