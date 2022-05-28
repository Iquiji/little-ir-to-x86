%include "../includes.asm"
%include "../helper_functions.asm"
section .data
_0_ll_item_0_actual db "n",0h ; Autogen
_0_ll_item_0_data_ptr_struc:
    istruc data_ptr
        at data_ptr.type, dd    3
        at data_ptr.mem, dd     _0_ll_item_0_actual
    iend

        
_0_ll_item_0:
    istruc linked_list_node
        at linked_list_node.next, dd 0 ; none if last
        at linked_list_node.data, dd _0_ll_item_0_data_ptr_struc ; ptr to data
    iend
_0_data_ptr_struc:
    istruc data_ptr
    at data_ptr.type, dd    5
    at data_ptr.mem, dd     _0_ll_item_0
    iend

static0_actual db "n",0h ; Autogen
static0_data_ptr_struc:
    istruc data_ptr
        at data_ptr.type, dd    3
        at data_ptr.mem, dd     static0_actual
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

section .text
extern printf,malloc
global main

main:
    push ebp ; hello there
    mov ebp,esp

    push __empty_to_output_to ; output here ; LinearInstruction::InitializeFunctionPointer
    push _0
    push dword[current_scope]
    call initialize_function_pointer
    add esp,8
    pop esi
    mov [vreg2],esi

    push dword[vreg2] ; LinearInstruction::PushToStack

    leave ; bye
    ret

_0:
    push ebp ; hello there
    mov ebp,esp

    push dword[ebp+8] ; LinearInstruction::AcceptToFormals
    push _0_data_ptr_struc
    call new_scope_attached_to_and_replacing_current 
    add esp,8

    push dword 0 ; LinearInstruction::Lookup
    push static0_actual
    push dword[current_scope]
    call lookup_in_scope_and_parents
    add esp, 8
    pop esi
    mov dword[vreg0],esi

    push dword[vreg0] ; LinearInstruction::PushToStack

    pop esi ; LinearInstruction::PopFromStack
    mov [vreg1],esi

    mov esi, dword[vreg1] ; LinearInstruction::Return
    mov [ebp+12], esi

    leave ; bye
    ret
