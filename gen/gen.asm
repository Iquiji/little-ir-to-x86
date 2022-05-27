%include "../includes.asm"
%include "../helper_functions.asm"
section .data
static2_actual db "cons",0h ; Autogen
static2_data_ptr_struc:
    istruc data_ptr
        at data_ptr.type, dd    3
        at data_ptr.mem, dd     static2_actual
    iend

        
static3_actual db "carrot",0h ; Autogen
static3_data_ptr_struc:
    istruc data_ptr
        at data_ptr.type, dd    3
        at data_ptr.mem, dd     static3_actual
    iend

        
static4_actual db "car",0h ; Autogen
static4_data_ptr_struc:
    istruc data_ptr
        at data_ptr.type, dd    3
        at data_ptr.mem, dd     static4_actual
    iend

        
static0_actual db "display",0h ; Autogen
static0_data_ptr_struc:
    istruc data_ptr
        at data_ptr.type, dd    3
        at data_ptr.mem, dd     static0_actual
    iend

        
static5_ll_item_0_ll_item_0_actual db "zeroth",0h ; Autogen
static5_ll_item_0_ll_item_0_data_ptr_struc:
    istruc data_ptr
        at data_ptr.type, dd    3
        at data_ptr.mem, dd     static5_ll_item_0_ll_item_0_actual
    iend

        
static5_ll_item_0_ll_item_0:
    istruc linked_list_node
        at linked_list_node.next, dd static5_ll_item_0_ll_item_1 ; none if last
        at linked_list_node.data, dd static5_ll_item_0_ll_item_0_data_ptr_struc ; ptr to data
    iend
static5_ll_item_0_ll_item_1_actual db "list",0h ; Autogen
static5_ll_item_0_ll_item_1_data_ptr_struc:
    istruc data_ptr
        at data_ptr.type, dd    3
        at data_ptr.mem, dd     static5_ll_item_0_ll_item_1_actual
    iend

        
static5_ll_item_0_ll_item_1:
    istruc linked_list_node
        at linked_list_node.next, dd static5_ll_item_0_ll_item_2 ; none if last
        at linked_list_node.data, dd static5_ll_item_0_ll_item_1_data_ptr_struc ; ptr to data
    iend
static5_ll_item_0_ll_item_2_actual db "with",0h ; Autogen
static5_ll_item_0_ll_item_2_data_ptr_struc:
    istruc data_ptr
        at data_ptr.type, dd    3
        at data_ptr.mem, dd     static5_ll_item_0_ll_item_2_actual
    iend

        
static5_ll_item_0_ll_item_2:
    istruc linked_list_node
        at linked_list_node.next, dd static5_ll_item_0_ll_item_3 ; none if last
        at linked_list_node.data, dd static5_ll_item_0_ll_item_2_data_ptr_struc ; ptr to data
    iend
static5_ll_item_0_ll_item_3_actual db "five",0h ; Autogen
static5_ll_item_0_ll_item_3_data_ptr_struc:
    istruc data_ptr
        at data_ptr.type, dd    3
        at data_ptr.mem, dd     static5_ll_item_0_ll_item_3_actual
    iend

        
static5_ll_item_0_ll_item_3:
    istruc linked_list_node
        at linked_list_node.next, dd static5_ll_item_0_ll_item_4 ; none if last
        at linked_list_node.data, dd static5_ll_item_0_ll_item_3_data_ptr_struc ; ptr to data
    iend
static5_ll_item_0_ll_item_4_actual db "elements",0h ; Autogen
static5_ll_item_0_ll_item_4_data_ptr_struc:
    istruc data_ptr
        at data_ptr.type, dd    3
        at data_ptr.mem, dd     static5_ll_item_0_ll_item_4_actual
    iend

        
static5_ll_item_0_ll_item_4:
    istruc linked_list_node
        at linked_list_node.next, dd 0 ; none if last
        at linked_list_node.data, dd static5_ll_item_0_ll_item_4_data_ptr_struc ; ptr to data
    iend
static5_ll_item_0_data_ptr_struc:
    istruc data_ptr
    at data_ptr.type, dd    5
    at data_ptr.mem, dd     static5_ll_item_0_ll_item_0
    iend

static5_ll_item_0:
    istruc linked_list_node
        at linked_list_node.next, dd static5_ll_item_1 ; none if last
        at linked_list_node.data, dd static5_ll_item_0_data_ptr_struc ; ptr to data
    iend
static5_ll_item_1_actual db "first_element_of_car",0h ; Autogen
static5_ll_item_1_data_ptr_struc:
    istruc data_ptr
        at data_ptr.type, dd    3
        at data_ptr.mem, dd     static5_ll_item_1_actual
    iend

        
static5_ll_item_1:
    istruc linked_list_node
        at linked_list_node.next, dd static5_ll_item_2 ; none if last
        at linked_list_node.data, dd static5_ll_item_1_data_ptr_struc ; ptr to data
    iend
static5_ll_item_2_actual db "second_element_of_car",0h ; Autogen
static5_ll_item_2_data_ptr_struc:
    istruc data_ptr
        at data_ptr.type, dd    3
        at data_ptr.mem, dd     static5_ll_item_2_actual
    iend

        
static5_ll_item_2:
    istruc linked_list_node
        at linked_list_node.next, dd 0 ; none if last
        at linked_list_node.data, dd static5_ll_item_2_data_ptr_struc ; ptr to data
    iend
static5_data_ptr_struc:
    istruc data_ptr
    at data_ptr.type, dd    5
    at data_ptr.mem, dd     static5_ll_item_0
    iend

static1_actual db "car",0h ; Autogen
static1_data_ptr_struc:
    istruc data_ptr
        at data_ptr.type, dd    3
        at data_ptr.mem, dd     static1_actual
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
vreg17: resd 1
vreg18: resd 1
vreg19: resd 1
vreg20: resd 1
vreg21: resd 1
vreg22: resd 1
vreg23: resd 1
vreg24: resd 1
vreg25: resd 1
vreg26: resd 1
vreg27: resd 1
vreg28: resd 1
vreg29: resd 1
vreg30: resd 1
vreg31: resd 1
vreg32: resd 1

section .text
extern printf,malloc
global main

main:
    push ebp ; hello there
    mov ebp,esp

    push dword 0 ; LinearInstruction::Lookup
    push static0_actual
    push dword[current_scope]
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

    push dword 0 ; LinearInstruction::Lookup
    push static1_actual
    push dword[current_scope]
    call lookup_in_scope_and_parents
    add esp, 8
    pop esi
    mov dword[vreg2],esi

    push dword[vreg2] ; LinearInstruction::PushToStack

    push dword 0 ; LinearInstruction::LinkedListInit
    call init_linked_list
    pop esi
    mov [vreg3],esi

    push dword[vreg3] ; LinearInstruction::PushToStack

    push dword 0 ; LinearInstruction::Lookup
    push static2_actual
    push dword[current_scope]
    call lookup_in_scope_and_parents
    add esp, 8
    pop esi
    mov dword[vreg4],esi

    push dword[vreg4] ; LinearInstruction::PushToStack

    push dword 0 ; LinearInstruction::LinkedListInit
    call init_linked_list
    pop esi
    mov [vreg5],esi

    push dword[vreg5] ; LinearInstruction::PushToStack

    mov dword[vreg6],static3_data_ptr_struc ; LinearInstruction::StaticRefToRegister

    push dword[vreg6] ; LinearInstruction::PushToStack

    pop esi ; LinearInstruction::PopFromStack
    mov [vreg7],esi

    pop esi ; LinearInstruction::PopFromStack
    mov [vreg8],esi

    mov esi, dword[vreg8] ; linked_list_reg ; LinearInstruction::LinkedListAdd
    mov edi, dword[vreg7] ; input_reg
    push esi 
    push dword edi
    call add_to_linked_list
    add esp,8

    push dword[vreg8] ; LinearInstruction::PushToStack

    push dword 0 ; LinearInstruction::Lookup
    push static4_actual
    push dword[current_scope]
    call lookup_in_scope_and_parents
    add esp, 8
    pop esi
    mov dword[vreg9],esi

    push dword[vreg9] ; LinearInstruction::PushToStack

    push dword 0 ; LinearInstruction::LinkedListInit
    call init_linked_list
    pop esi
    mov [vreg10],esi

    push dword[vreg10] ; LinearInstruction::PushToStack

    mov dword[vreg11],static5_data_ptr_struc ; LinearInstruction::StaticRefToRegister

    push dword[vreg11] ; LinearInstruction::PushToStack

    pop esi ; LinearInstruction::PopFromStack
    mov [vreg12],esi

    pop esi ; LinearInstruction::PopFromStack
    mov [vreg13],esi

    mov esi, dword[vreg13] ; linked_list_reg ; LinearInstruction::LinkedListAdd
    mov edi, dword[vreg12] ; input_reg
    push esi 
    push dword edi
    call add_to_linked_list
    add esp,8

    push dword[vreg13] ; LinearInstruction::PushToStack

    pop esi ; LinearInstruction::PopFromStack
    mov [vreg14],esi

    pop esi ; LinearInstruction::PopFromStack
    mov [vreg15],esi

    mov esi,[vreg15] ; LinearInstruction::Call
    mov edi,[vreg14]
    push __empty_to_output_to ; output here 
    push edi
    push esi
    call auxilary_call_function
    add esp,8
    pop esi
    mov [vreg16],esi

    push dword[vreg16] ; LinearInstruction::PushToStack

    pop esi ; LinearInstruction::PopFromStack
    mov [vreg17],esi

    pop esi ; LinearInstruction::PopFromStack
    mov [vreg18],esi

    mov esi, dword[vreg18] ; linked_list_reg ; LinearInstruction::LinkedListAdd
    mov edi, dword[vreg17] ; input_reg
    push esi 
    push dword edi
    call add_to_linked_list
    add esp,8

    push dword[vreg18] ; LinearInstruction::PushToStack

    pop esi ; LinearInstruction::PopFromStack
    mov [vreg19],esi

    pop esi ; LinearInstruction::PopFromStack
    mov [vreg20],esi

    mov esi,[vreg20] ; LinearInstruction::Call
    mov edi,[vreg19]
    push __empty_to_output_to ; output here 
    push edi
    push esi
    call auxilary_call_function
    add esp,8
    pop esi
    mov [vreg21],esi

    push dword[vreg21] ; LinearInstruction::PushToStack

    pop esi ; LinearInstruction::PopFromStack
    mov [vreg22],esi

    pop esi ; LinearInstruction::PopFromStack
    mov [vreg23],esi

    mov esi, dword[vreg23] ; linked_list_reg ; LinearInstruction::LinkedListAdd
    mov edi, dword[vreg22] ; input_reg
    push esi 
    push dword edi
    call add_to_linked_list
    add esp,8

    push dword[vreg23] ; LinearInstruction::PushToStack

    pop esi ; LinearInstruction::PopFromStack
    mov [vreg24],esi

    pop esi ; LinearInstruction::PopFromStack
    mov [vreg25],esi

    mov esi,[vreg25] ; LinearInstruction::Call
    mov edi,[vreg24]
    push __empty_to_output_to ; output here 
    push edi
    push esi
    call auxilary_call_function
    add esp,8
    pop esi
    mov [vreg26],esi

    push dword[vreg26] ; LinearInstruction::PushToStack

    pop esi ; LinearInstruction::PopFromStack
    mov [vreg27],esi

    pop esi ; LinearInstruction::PopFromStack
    mov [vreg28],esi

    mov esi, dword[vreg28] ; linked_list_reg ; LinearInstruction::LinkedListAdd
    mov edi, dword[vreg27] ; input_reg
    push esi 
    push dword edi
    call add_to_linked_list
    add esp,8

    push dword[vreg28] ; LinearInstruction::PushToStack

    pop esi ; LinearInstruction::PopFromStack
    mov [vreg29],esi

    pop esi ; LinearInstruction::PopFromStack
    mov [vreg30],esi

    mov esi,[vreg30] ; LinearInstruction::Call
    mov edi,[vreg29]
    push __empty_to_output_to ; output here 
    push edi
    push esi
    call auxilary_call_function
    add esp,8
    pop esi
    mov [vreg31],esi

    push dword[vreg31] ; LinearInstruction::PushToStack

    leave ; bye
    ret
