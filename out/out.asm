%include "../includes.asm"
%include "../helper_functions.asm"
section .data

bye_msg dd "bye bye motherfucker",0Ah,0h
fmtd_str_out dd "out: %lu",0Ah,0h
static1_actual dd 5 ; Autogen
static1_data_ptr_struc:
    istruc data_ptr
        at data_ptr.type, dd    1
        at data_ptr.mem, dd     static1_actual
    iend

        
static0_actual db "display",0h ; Autogen
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
fmtd_str db "result from lookup?: %lu",0Ah,0h

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

section .text
extern printf,malloc,puts
global main

main:
    push ebp
    mov ebp, esp 

    push primitive_display_asm_actual
    push fmtd_str
    call printf
    add esp, 8

    push dword 0 ; LinearInstruction::Lookup
    push static0_actual
    push current_scope
    call lookup_in_scope_and_parents
    add esp, 8
    pop esi
    mov dword[vreg0],esi

    push dword[vreg0] ; LinearInstruction::PushToStack

    push static0_actual
    call puts
    add esp,8

    push dword[vreg0]
    push dword fmtd_str
    call printf
    add esp, 8

    push dword 0
    call dword init_linked_list
    pop eax

    push eax
    push eax

    push eax
    push dword 42
    call add_to_linked_list
    add esp,8

    pop eax
    push eax

    push eax
    push dword 187
    call add_to_linked_list
    add esp,8

    pop eax
    push eax

    push eax
    push dword 4
    call add_to_linked_list
    add esp, 8  

    pop eax
.loop_linked_list:
    push eax
    
    mov edx, dword [eax+linked_list_node.data]

    push dword edx
    push dword fmtd_str_out
    call printf
    add esp, 8

    pop eax 

    cmp dword[eax+linked_list_node.next], 0
    je .ex9t

    mov eax, dword [eax+linked_list_node.next]
    jmp .loop_linked_list

.ex9t:
    push eax
    push fmtd_str
    call printf
    add esp, 8

    ; call display_actual with our calling convention
    ; little_intermediate_representation::LinearInstruction::Call { output_reg, function_pointer, arguments }
    ; gotta clone the scope in function_pointer :O pain?
    pop eax
    
    push __empty_to_output_to ; output here
    push eax
    push primitive_display_init_func_ptr_struc
    call auxilary_call_function
    add esp,8

    push fmtd_str_out
    call printf
    add esp, 8

    push dword bye_msg
    call puts
    add esp,4

    leave
    ret