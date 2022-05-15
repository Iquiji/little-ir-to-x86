; GLOBAL SCOPE: 
%include "include.asm"
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

; lookup blueprint: WIP
; string comparision:
string_cmp:
    push ebp
    mov ebp, esp

    mov esi, [ebp-12]
    mov edi, [ebp-8]

    mov ecx, 0            ; index and loop counter
.cmp_loop:
    mov eax, 0
    mov ebx, 0  
    mov al, [esi+ecx]   ; load a character from passwd
    mov bl, [edi+ecx]   ; is it equal to the same character in the input?
    cmp al,bl
    jne .if_unequal          ; if not, the password is incorrect
    inc ecx               ; advance index
    cmp al, 0             ; reached the end of the string?
    je .if_equal             ; loop until we do
    jmp .cmp_loop            ; if this line is reached, the password was correct
.if_equal: ; if equal return that 
    push 1
    ret

.if_unequal: ; if not go to next
    push 0
    ret

lookup_in_scope_and_parents:
    ; takes ptr to ident string to search for in as arg
    ; and takes scope overlord for which to search in and search up in as argument
    ; ebp-8 -> scope_overlord* ebp-12 -> search_str*
    push ebp
    mov ebp, esp

    ; push current_overlord to stack
    mov eax, ebp-8
    push eax

.compare_in_overlord_start:
    ; search current overlord until we find something
    cmp [eax + scope_overlord.scope_data], 0
    je .next_overlord
    ; this overlord member not nonexistent
    mov ebx, [eax + scope_overlord.scope_data] ; ebx holds current scope_member in linked list



.next_overlord:
    pop eax
    mov eax, [eax, scope_overlord.parent]
    push eax
    jmp .compare_in_overlord_start

.return:
    leave
    ret

; if not existing panic!?

