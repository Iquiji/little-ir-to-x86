%include "../includes.asm"
section .data
report_string dd "Panic!",0Ah,0h
init_msg_in_lookup: db "init lookup",0h
fmtd_str_compare:
    db "comparing: '%s' & '%s'", 0Ah, 0h 
section .text
string_cmp: 
    ; compares 2 strings ; first arg result ; second and third: first and second string respectevly
    ; returns 1 in first arg for true and 0 for false
    push ebp
    mov ebp, esp

    mov esi, [ebp+12]
    mov edi, [ebp+8]

    push esi 
    push edi

    push esi
    push edi
    push dword fmtd_str_compare
    call printf
    add esp, 8

    pop edi 
    pop esi


    mov ecx, 0            ; index and loop counter
.cmp_loop:
    mov al, 0
    mov bl, 0  
    mov al, [esi+ecx]   ; load a character from passwd
    mov bl, [edi+ecx]   ; is it equal to the same character in the input?
    cmp al,bl
    jne .if_unequal          ; if not, the password is incorrect
    inc ecx               ; advance index
    cmp al, 0             ; reached the end of the string?
    je .if_equal             ; loop until we do
    jmp .cmp_loop            ; if this line is reached, the password was correct
.if_equal: ; if equal return that 
    
    mov [ebp+16], dword 1
    mov  esp,ebp        ; standard function return stuff - we
    pop  ebp            ; have to restore %ebp and %esp to where
    ret

.if_unequal: ; if not go to next
    
    mov [ebp+16], dword 0
    mov  esp,ebp        ; standard function return stuff - we
    pop  ebp            ; have to restore %ebp and %esp to where
    ret


extern printf,malloc

lookup_in_scope_and_parents:
    ; takes ptr to ident string to search for in as arg
    ; and takes scop51063e overlord for which to search in and search up in as argument
    ; ebp+8 -> scope_overlord* ebp+12 -> search_str* ; ebp+16 result here
    push ebp
    mov ebp, esp

    ; push current_overlord to stack
    mov eax, dword[ebp+8]
    push eax
    
    push ebx
    push eax
    push init_msg_in_lookup
    call puts
    add esp, 4
    pop eax
    pop eax


    mov esi, dword[eax + scope_overlord.scope_data]

    ; pop eax
    
    jmp .compare_in_overlord_start 
.compare_in_overlord_start:
    ; search current overlord until we find something
    cmp dword[eax + scope_overlord.scope_data], dword 0
    je .next_overlord
    ; this overlord member not nonexistent
    mov ebx, dword[eax + scope_overlord.scope_data] ; ebx holds current scope_member in linked list
.compare_in_member_list:
    push ebx

    push eax

    push 0
    push dword[ebp+12]
    push dword[ebx + scope_member.identifier]
    call string_cmp
    add esp, 8

    pop ecx ; result from string cmp
    pop eax

    cmp ecx, 1 ; if equal strings
    je .found_result

    pop ebx

    ; not equal go to next
    cmp dword[ebx+scope_member.next], dword 0
    je .next_overlord

    ; next member exists:
    mov ebx, dword[ebx+scope_member.next]
    jmp .compare_in_member_list

.found_result:
    pop ebx

    mov ecx, dword[ebx + scope_member.data]
    
    mov ecx, dword[ecx]

    mov dword[ebp+16], ecx
    jmp .return

.next_overlord:
    pop eax
    mov eax, dword[eax + scope_overlord.parent]
    push eax
    jmp .compare_in_overlord_start

.return:
    leave
    ret

; if not existing panic!?

init_linked_list:
    ; init a custom pointer for linked list here and output it into the given register:
    ; takes one ebp+8 ptr to location that should link to created custom pointer
    push ebp
    mov ebp, esp

    ; get loction that will be linked to
    mov eax, dword[ebp+8]

    ; 5 for type list
    push linked_list_node_size
    call malloc   ; result in eax
    add esp, 4

    test eax,eax
    jz error_somewhere

    mov [ebp+8], eax

    mov [eax+linked_list_node.next], dword 0
    mov [eax+linked_list_node.data], dword 0

    leave    
    ret

add_to_linked_list:
    ; add element to custom pointer for linked list here and output it into the given register:
    ; takes one ebp+12 ptr to start of linked list
    ; and ebp+8 data pointer to add
    push ebp
    mov ebp, esp

    mov eax, [ebp+8]
.node_search_for_empty_data_or_empty_next:

    cmp dword[eax+linked_list_node.data], 0
    je .data_clear_in_this_node

    cmp dword[eax+linked_list_node.next], 0
    je .next_empty_this_node

    mov eax, dword[eax+linked_list_node.next]
    jmp .node_search_for_empty_data_or_empty_next

.next_empty_this_node:
    ; need to call mallo for next node
    push linked_list_node_size
    call malloc   ; result in eax
    add esp, 4

    test eax,eax
    jz error_somewhere

    mov dword[eax+linked_list_node.next], dword 0

.data_clear_in_this_node:
    mov ebx,[ebp+12]
    mov [eax+linked_list_node.data], ebx
    jmp .exit

.exit:
    leave
    ret

error_somewhere:
    mov eax, 4
    mov ebx, 1
    mov ecx, report_string
    mov edx, 7
    int 80h

    push report_string
    call puts
    add esp,4


    mov eax, 1
    mov ebx, 0
    int 80h