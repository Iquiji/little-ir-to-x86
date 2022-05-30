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
display_fmt_warn_list_ptr_mem_zero db "DISPAY: WARN list data ptr mem is zero // List empty?",0Ah, 0h
car_fmt_impossible_type: db "CAR: ERROR Impossible value for type: %lu! Address: %#10x", 0Ah, 0h
cdr_fmt_impossible_type: db "CDR: ERROR Impossible value for type: %lu! Address: %#10x", 0Ah, 0h
cons_fmt_impossible_type: db "CONS: ERROR Impossible value for type: %lu! Address: %#10x", 0Ah, 0h
plus_fmt_impossible_type: db "PLUS: ERROR Impossible value for type: %lu!", 0Ah, 0h

section .text

primitive_car_asm_actual:
    push ebp
    mov ebp,esp
    ; ebp+12 output
    ; ebp+8 args

    ; match first arg?
    mov eax, [ebp+8] ; get arg list pointer
    mov ebx, [eax+linked_list_node.data]
    mov ebx, [ebx+data_ptr.type]

    cmp ebx, 5
    jne .invalid_type

    mov eax, [ebp+8] ; get arg list pointer
    mov eax, [eax+linked_list_node.data]
    mov eax, [eax+data_ptr.mem] ; get memory of first arg


    mov ebx, dword[eax + linked_list_node.data] ; get first element of linked list from arg
    ; mov ecx, [ebx + data_ptr.type]

    ; push ecx
    ; push display_fmt_null
    ; call printf
    ; add esp, 8

    mov [ebp+12], ebx ; return the first element

    jmp .exit

.invalid_type:
    mov eax, [ebp+8] ; get arg list pointer
    mov ebx, [eax+linked_list_node.data]
    mov ebx, [ebx+data_ptr.type]

    push ebx
    push car_fmt_impossible_type
    call printf
    add esp,8

.exit:
    leave
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
    
    mov eax, [ebp+8] ; get arg list pointer
    mov ebx, [eax+linked_list_node.data]
    mov ebx, [ebx+data_ptr.type]

    push ebx
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
    
    ; go through each element and call primitive_display_asm_actual
    mov eax, [ebp+8] ; get arg list pointer
    mov eax, [eax+linked_list_node.data]
    mov eax, [eax+data_ptr.mem]

    cmp eax, 0
    je .list_ptr_mem_zero

    jmp .list_loop

.list_ptr_mem_zero:

    push display_fmt_warn_list_ptr_mem_zero
    call puts
    add esp,4

    jmp .exit
.list_loop:
    push eax

    mov ebx, dword[eax + linked_list_node.data]

    ; mov ebx, dword[ebx]
    push ebx

    push dword 0 ; LinearInstruction::LinkedListInit
    call init_linked_list
    pop esi

    pop ebx
    push esi

    push esi 
    push ebx
    call add_to_linked_list
    add esp,8

    pop esi

    push 0
    push esi
    call primitive_display_asm_actual
    add esp, 8

    pop eax

    cmp dword[eax + linked_list_node.next], 0
    je .exit

    mov eax, [eax + linked_list_node.next]

    jmp .list_loop

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

primitive_cdr_asm_actual:
    push ebp
    mov ebp,esp
    ; ebp+12 output
    ; ebp+8 args

    ; match first arg?
    mov eax, [ebp+8] ; get arg list pointer
    mov ebx, [eax+linked_list_node.data]
    mov ebx, [ebx+data_ptr.type]

    cmp ebx, 5
    jne .invalid_type

    mov eax, [ebp+8] ; get arg list pointer
    mov eax, [eax+linked_list_node.data]
    mov eax, [eax+data_ptr.mem] ; get memory of first arg

    mov ebx, dword[eax + linked_list_node.next] ; get second element of linked list from arg
    push ebx

    push data_ptr_size
    call malloc
    add esp,4

    test eax,eax
    jz error_somewhere

    pop ebx
    mov [eax + data_ptr.type], dword 5
    mov [eax + data_ptr.mem], ebx

    mov [ebp+12], eax ; return the first element

    jmp .exit

.invalid_type:
    mov eax, [ebp+8] ; get arg list pointer
    mov ebx, [eax+linked_list_node.data]
    mov ebx, [ebx+data_ptr.type]

    push ebx
    push cdr_fmt_impossible_type
    call printf
    add esp,8

.exit:
    leave
    ret

primitive_cons_asm_actual:
    push ebp
    mov ebp,esp
    ; ebp+12 output
    ; ebp+8 args

    ; match second arg for list to prepend to
    mov eax, [ebp+8] ; get arg list pointer
    mov ebx, [eax+linked_list_node.next]
    mov ebx, [ebx+linked_list_node.data]
    mov ebx, [ebx+data_ptr.type]

    cmp ebx, 5
    jne .invalid_type

    mov eax, [ebp+8] ; get arg list pointer
    mov eax, [eax+linked_list_node.data] ; get data_ptr of first arg
    push eax
    ; make linked list node for first arg to prepend second arg list

    push linked_list_node_size
    call malloc
    add esp,4

    test eax,eax
    jz error_somewhere

    pop ebx ; prev eax // first arg data_ptr
    mov [eax + linked_list_node.data], ebx

    mov ecx, [ebp+8] ; get arg list pointer
    mov ecx, [ecx + linked_list_node.next]
    mov ecx, [ecx+linked_list_node.data] 
    mov ecx, [ecx+data_ptr.mem]; get linked list of second arg

    mov [eax + linked_list_node.next], ecx

    push eax ; new first linked list element

    ; now make new data_ptr
    push data_ptr_size
    call malloc
    add esp,4

    test eax,eax
    jz error_somewhere

    pop ebx ; new first linked list element
    mov [eax + data_ptr.type], dword 5
    mov [eax + data_ptr.mem], ebx

    mov [ebp+12], eax ; return the first element

    jmp .exit

.invalid_type:
    mov eax, [ebp+8] ; get arg list pointer
    mov ebx, [eax+linked_list_node.data]
    mov ebx, [ebx+data_ptr.type]

    push ebx
    push cons_fmt_impossible_type
    call printf
    add esp,8

.exit:
    leave
    ret

primitive_plus_asm_actual:
    push ebp
    mov ebp,esp

    mov edx, [ebp+8] ; get arg list pointer
    mov eax, dword 0 ; adder

.add_loop:
    mov ebx, [edx + linked_list_node.data]

    cmp ebx, 0
    je .exit

    cmp dword[ebx + data_ptr.type], 1
    jne .invalid_type

    mov ecx, [ebx + data_ptr.mem]
    mov ecx, [ecx]
    add eax, ecx

    cmp dword[edx + linked_list_node.next], 0
    je .exit

    mov edx, [edx + linked_list_node.next]

    jmp .add_loop

.invalid_type:
    push eax

    push dword[ebx + data_ptr.type]
    push plus_fmt_impossible_type
    call printf
    add esp,8

    pop eax
.exit:
    push eax

    ; now make new data_ptr
    push 4 ; alloc number in memory
    call malloc
    add esp,4

    test eax,eax
    jz error_somewhere

    pop ebx ; new name for our accumulator
    mov [eax], ebx
    push eax ; push our pointer to accumulator

    ; now make new data_ptr
    push data_ptr_size
    call malloc
    add esp,4

    test eax,eax
    jz error_somewhere

    pop ebx ; new name for our accumulator pointer
    mov [eax + data_ptr.type], dword 1
    mov [eax + data_ptr.mem], ebx

    mov [ebp+12],eax

    leave
    ret