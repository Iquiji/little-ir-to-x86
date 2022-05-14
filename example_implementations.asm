; GLOBAL SCOPE: 

; stubs for function pointer scopes for global scopes
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

; global scope begins here

global_scope:
    istruc scope_overlord
        at scope_overlord.parent, dd 0 ; global scope doesnt have parents!
        at scope_overlord.scope_data, dd global_scope_data_ll_0
    iend

; items for global scope begin here

global_scope_data_ll_0:
    istruc scope_member
        at scope_member.next, dd 0 ; none for now
        at scope_member.identifier, dd primitive_car_global_scope_string_ident ; ptr to string ident
        at scope_member.data, dd primitive_car_init_func_ptr_struc ; ptr to function
    iend


section .text

primitive_car_asm_actual:
    nop
