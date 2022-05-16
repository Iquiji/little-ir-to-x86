%include "../helper_functions.asm"
%include "../includes.asm"
section .data
msg: 
    db "Hello Assembler!", 0Ah, 0h
fmtd_str:
    db "%lu", 0Ah, 0h
fmtd_str_address:
    db "address: %lu", 0Ah, 0h
fmtd_str_success:
    db "success: %lu", 0Ah, 0h 
str_1: db "trol1222ABF" , 0h
str_2: db "trol1222ABF" , 0h

str_to_search_for_in_scope: db "display", 0h

static0_actual dd 54321 ; Integer
static0_data_ptr_struc:
    istruc data_ptr
        at data_ptr.type, dd    1
        at data_ptr.mem, dd     static0_actual
    iend
section .text

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
    
primitive_cdr_global_scope_string_ident: db "cdr", 0h
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

global main
extern printf, puts, malloc

main:
    ; init code to clean stack
    push ebp
    mov ebp, esp 

    ;
    push msg
    call puts
    add esp, 8
    pop eax

    mov eax, 0

.inc_loop:
    inc eax

    push eax

    push eax     
    push dword fmtd_str
    call printf
    add esp, 8 ; realign stack pointer?

    ; do stuff x times while printing ;)
    push 1024
    call malloc
    add esp, 4

    push eax
    push dword fmtd_str_address
    call printf
    add esp, 8

    ; end do stuff

    pop eax

    cmp eax,16
    jne .inc_loop

    ;

    mov eax, [static0_data_ptr_struc + data_ptr.mem]
    mov eax, [eax]
    ; mov eax, [eax]
    ; mov eax, [eax]
    ; mov eax, [eax]

    push eax     
    push dword fmtd_str
    call printf
    add esp, 8 ; realign stack pointer?

    push dword 0
    push str_1
    push str_2
    call string_cmp
    add esp,8

    push dword fmtd_str_success
    call printf
    add esp, 8

    ; search in scope

    push primitive_display_asm_actual
    push dword fmtd_str_address
    call printf
    add esp, 8

    push dword 0
    push str_to_search_for_in_scope
    push global_scope
    call lookup_in_scope_and_parents
    add esp, 8

    push dword fmtd_str_address
    call printf
    add esp, 8

    ; fix ebp from stack
    pop ebp

    ;;  return 0
    mov eax, 0
    ret

primitive_car_asm_actual:
    nop
primitive_cdr_asm_actual:
    nop
primitive_cons_asm_actual:
    nop
primitive_display_asm_actual:
    nop