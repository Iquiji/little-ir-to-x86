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
    mov eax, [eax+linked_list_node.data] ; get data from first ll node
    mov ebx, [eax+data_ptr.type]
    ; need to match data_ptr.type
    ; 0 - Uninitialized Data! Error? 
    ; 1 - Number -> Ptr
    ; 2 - Boolean -> Ptr
    ; 3 - Identifier -> Ptr
    ; 4 - String -> Ptr
    ; 5 - List -> Ptr to LinkedList
    ; 6 - 
    ; 7 - 
    ; 8 - 
    ; 9 - Null / Nil

    cmp ebx, 0
    je 

    cmp ebx

.uninitialized

.exit:
    ; display returns nothing!
    mov dword[ebp+12],42000

    leave
    ret

primitive_cons_asm_actual:
    ret
primitive_cdr_asm_actual:
    ret