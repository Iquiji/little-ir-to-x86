struc linked_list_node
    .next:   resd 1 ; Pointer ; if 0 there is none
    .data:   resd 1 ; Pointer to data_ptr
endstruc

struc data_ptr
    .type:   resd 1 ; type annotation number
    .mem:    resd 1 ; Pointer to actual data
endstruc

struc scope_overlord
    .parent:     resd 1 ; parent scope ; if 0 there is none
    .scope_data: resd 1 ; pointer to scope_member list
endstruc

struc scope_member
    .next:       resd 1 ; next scope member ; if 0 there is none
    .identifier: resd 1 ; pointer to string corresponding to this entry
    .data:       resd 1 ; data if the identifier is the right one
endstruc

struc init_func_pointer
    .actual_func_ptr resd 1 ; ptr to the actual function
    .scope resd 1 ; ptr to the scope corresponding to this init func pointer
endstruc

section .data

debug_was_here: db "got to here xD",0Ah,0h
display_fmt_uninitalized: db "DISPLAY: ERROR Uninitialized Data! Address: %#10x", 0Ah, 0h
display_fmt_number: db "DISPLAY: Number: %ld, Address: %#10x", 0Ah, 0h
display_fmt_boolean: db "DISPLAY: Boolean: %ld, Address: %#10x", 0Ah, 0h
display_fmt_identifier: db "DISPLAY: Identifier: '%s', Address: %#10x", 0Ah, 0h
display_fmt_string: db "DISPLAY: String: '%s', Address: %#10x", 0Ah, 0h
display_fmt_list: db "DISPLAY: List! Address: %#10x", 0Ah, 0h
display_fmt_function: db "DISPLAY: Function! Address: %#10x", 0Ah, 0h
display_fmt_null: db "DISPLAY: Null! Address: %#10x", 0Ah, 0h
display_fmt_impossible_value: db "DISPLAY: ERROR Impossible value for type: %lu! Address: %#10x", 0Ah, 0h

section .text

primitive_car_asm_actual:
    ret
primitive_display_asm_actual:
    push ebp
    mov ebp,esp
    ; ebp+12 output
    ; ebp+8 args

    ; match first arg?
    mov eax, [ebp+8] ; get arg list pointer
    mov ebx, [eax+linked_list_node.data]
    mov ebx, [ebx+data_ptr.type]
    
    ; need to match data_ptr.type
    ; 0 - Uninitialized Data! Error? 
    ; 1 - Number -> PtrUninitialized Data
    ; 2 - Boolean -> Ptr
    ; 3 - Identifier -> Ptr
    ; 4 - String -> Ptr
    ; 5 - List -> Ptr to LinkedList
    ; 6 - 
    ; 7 - 
    ; 8 - 
    ; 9 - Null / Nil

    cmp ebx, 0
    je .uninitialized

    cmp ebx, 1
    je .number

    cmp ebx, 2
    je .boolean

    cmp ebx, 3
    je .identifier

    cmp ebx, 4
    je .string

    cmp ebx, 5
    je .list

    cmp ebx, 6
    je .functions_pointer

    cmp ebx, 9
    je .uninitialized

    ; error if something else!
    
    mov eax, [ebp+8]

    push eax
    push display_fmt_impossible_value
    call printf
    add esp,8

    jmp .exit

.uninitialized:
    mov eax, [ebp+8]

    push eax
    push display_fmt_uninitalized
    call printf
    add esp,8

    jmp .exit

.number:
    mov eax, [ebp+8] ; get arg list pointer
    mov ebx, [eax+linked_list_node.data]
    mov ebx, [ebx+data_ptr.mem]
    mov ebx, [ebx]

    push eax
    push ebx
    push display_fmt_number
    call printf
    add esp,12

    jmp .exit

.boolean:
    mov eax, [ebp+8] ; get arg list pointer
    mov ebx, [eax+linked_list_node.data]
    mov ebx, [ebx+data_ptr.mem]
    mov ebx, [ebx]


    push eax
    push ebx
    push display_fmt_boolean
    call printf
    add esp,12

    jmp .exit


.identifier:
    mov eax, [ebp+8] ; get arg list pointer
    mov ebx, [eax+linked_list_node.data]
    mov ebx, [ebx+data_ptr.mem]
    ; mov ebx,z [ebx]

    push eax
    push ebx
    push display_fmt_identifier
    call printf
    add esp,12

    jmp .exit

.string:
    mov eax, [ebp+8] ; get arg list pointer
    mov ebx, [eax+linked_list_node.data]
    mov ebx, [ebx+data_ptr.mem]

    push eax
    push ebx
    push display_fmt_string
    call printf
    add esp,12

    jmp .exit


.list:
    mov eax, [ebp+8]

    push eax
    push display_fmt_list
    call printf
    add esp,8

    jmp .exit


.functions_pointer:
    mov eax, [ebp+8]

    push eax
    push display_fmt_function
    call printf
    add esp,8

    jmp .exit

.null:
    mov eax, [ebp+8]

    push eax
    push display_fmt_null
    call printf
    add esp,8

    jmp .exit


.exit:
    ; display returns nothing!
    mov dword[ebp+12],42000

    leave
    ret

primitive_cons_asm_actual:
    ret
primitive_cdr_asm_actual:
    ret