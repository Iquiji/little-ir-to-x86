%define __empty_to_output_to 0
section .data
report_string dd "Panic!",0Ah,0h
empty_scope_data_report_string dd "WARN: Empty Scope Data",0Ah,0h
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

    mov eax, [ebp+12]
    jmp .node_search_for_empty_data_or_empty_next

.node_search_for_empty_data_or_empty_next:
    cmp dword[eax+linked_list_node.data], dword 0
    je .data_clear_in_this_node

    cmp dword[eax+linked_list_node.next], dword 0
    je .next_empty_this_node

    mov eax, dword[eax+linked_list_node.next]
    jmp .node_search_for_empty_data_or_empty_next

.next_empty_this_node:
    push eax ; need to set next on current
    ; need to call mallo for next node
    push linked_list_node_size
    call malloc   ; result in eax
    add esp, 4

    test eax,eax
    jz error_somewhere

    pop ecx ; previously eax
    mov dword[ecx+linked_list_node.next], eax ; set next for current node before new node

    mov dword[eax+linked_list_node.next], dword 0

.data_clear_in_this_node:
    mov ebx,[ebp+8]
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


auxilary_call_function:
    ; taking function_pointer[ebp+8], arguments[ebp+12] and empty spot for output in [ebp+16]   
    push ebp
    mov ebp, esp    
    
    ; step one auxilary_clone_scope
    mov eax, [ebp+8]
    mov eax, [eax+init_func_pointer.scope] ; get scope

    push 0 ; cloned scope goes here
    push eax
    call auxilary_clone_scope
    add esp,4 ; new scope on top of stack now

    pop eax ; cloned scope to replace current_scope

    ; replace current scope for the duration of the call
    ; UPDATE: dont replace order it under?
    mov ebx, current_scope
    push ebx

    mov dword[eax+scope_overlord.parent],ebx ; set news scope parent to the current one so we push it on top

    mov [current_scope], eax


    mov ecx, [ebp+8]
    mov ecx, [ecx+init_func_pointer.actual_func_ptr] ; get function pointer
    ; mov ecx, [ecx]

    ; push ecx
    ; push ebx
    ; push eax

    ; push ecx
    ; push fmtd_str_out
    ; call printf
    ; add esp, 8

    ; push primitive_display_asm_actual
    ; push fmtd_str_out
    ; call printf
    ; add esp, 8

    ; pop eax
    ; pop ebx
    ; pop eax

    mov edx, [ebp+12]

    push __empty_to_output_to
    push edx
    call ecx
    add esp,4

    push empty_scope_data_report_string
    call puts
    add esp,4

    pop eax ; output we want to use later

    pop ebx
    mov [current_scope],ebx ; restore scope

    mov [ebp+16], eax
.quit:
    leave
    ret
auxilary_clone_scope:
    ; taking scope[ebp+8] and outputting the clone into [ebp+12]
    ; only clones one level and leaves parents alone

    push ebp
    mov ebp, esp
    
    mov edx, [ebp+8] ; original overlord
    push edx
    ; step one clone overlord
    push scope_overlord_size
    call malloc ; new mem location in eax
    add esp,4

    test eax,eax
    jz error_somewhere

    mov [ebp+12], eax ; return value for later

    ; now clone parent
    pop edx 
    mov esi, dword [edx+scope_overlord.parent]
    mov [eax+scope_overlord.parent], esi

    cmp dword [edx+scope_overlord.scope_data], 0
    je .pre_quit_empty_scope_data

    ; scope data not empty
    ; edx = original overlord, eax = new overlord
    push edx
    push eax

    push scope_member_size
    call malloc 
    add esp,4

    test eax,eax
    jz error_somewhere

    pop ecx ; new overlord

    mov [ecx+scope_overlord.scope_data], eax ; set location in new overlord for scope_data
    ; new overlord doesnt matter anymore now

    mov ecx,eax ; set current member to clone from
    pop edx
    mov edx, [edx+scope_overlord.scope_data]

    ; ecx current member to clone from
    ; edx new member to clone to
.clone_members:
    mov eax, [edx+scope_member.data] ; intermediate for copying data location
    mov ebx, [edx+scope_member.identifier] ; intermediate for copying identifier location

    mov [ecx+scope_member.data], eax
    mov [ecx+scope_member.identifier], ebx

    cmp dword[edx+scope_member.next], dword 0
    je .quit

    ; next exists
    push ecx
    push edx

    push scope_member_size
    call malloc 
    add esp,4 

    test eax,eax
    jz error_somewhere
    
    pop edx
    mov [edx + scope_member.next], eax ; set next for current member

    pop ecx
    mov ecx, [ecx+scope_member.next] ; go to next

    mov edx, eax

    jmp .clone_members

.pre_quit_empty_scope_data:
    ; report empty scope data as WARN for now
    push empty_scope_data_report_string
    call puts
    add esp,4

.quit:
    leave
    ret