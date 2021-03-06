%define __empty_to_output_to 0
section .data

debug_output_lu db "got here and have here: %lu", 0Ah,0h
report_string db "Panic! Probably malloc xD",0Ah,0h
empty_scope_data_report_string db "WARN: Empty Scope Data",0Ah,0h
init_msg_in_lookup: db "init lookup: %lu",0Ah,0h
fmtd_str_compare:
    db "comparing: '%s' & '%s'", 0Ah, 0h 

fmtd_str_compare_adresses:
    db "comparing: %lu and %lu",0Ah,0h
section .text

extern malloc,printf,puts

string_cmp: 
    ; compares 2 strings ; first arg result ; second and third: first and second string respectevly
    ; returns 1 in first arg for true and 0 for false
    push ebp
    mov ebp, esp

    mov esi, [ebp+12]
    mov edi, [ebp+8]

    ; push esi 
    ; push edi

    ; ; push esi 
    ; ; push edi

    ; ; push esi
    ; ; push edi
    ; ; push dword fmtd_str_compare_adresses
    ; ; call printf
    ; ; add esp, 12

    ; ; pop edi
    ; ; pop esi

    ; push edi
    ; push esi
    ; push dword fmtd_str_compare
    ; call printf
    ; add esp, 12

    ; pop edi 
    ; pop esi


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

    ; push eax
    ; ; push ebx

    ; push eax
    ; push init_msg_in_lookup
    ; call printf
    ; add esp, 8

    ; ; pop eax
    ; ; pop ebx
    ; pop eax

    ; mov esi, dword[eax + scope_overlord.scope_data]

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

    mov esi, dword[ebp+12]
    ; mov esi, [esi]

    mov edi, ebx
    add edi, scope_member.identifier
    mov edi, [edi]

    ; push eax
    ; push ebx
    ; push ecx
    ; push esi
    ; push edi

    ; push esi
    ; push edi
    ; push dword fmtd_str_compare_adresses
    ; call printf
    ; add esp, 12

    ; pop edi
    ; pop esi
    ; pop ecx
    ; pop ebx
    ; pop eax

    push 0
    push esi
    push edi
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
    
    ; mov ecx, dword[ecx]

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

    cmp dword[eax+data_ptr.type], 6
    jne error_somewhere

    mov eax, [eax+data_ptr.mem]

    mov eax, [eax+init_func_pointer.scope] ; get scope

    push 0 ; cloned scope goes here
    push eax
    call auxilary_clone_scope
    add esp,4 ; new scope on top of stack now

    pop eax ; cloned scope to replace current_scope

    ; replace current scope for the duration of the call
    ; UPDATE: dont replace order it under?
    mov ebx, [current_scope]
    push ebx

    mov dword[eax+scope_overlord.parent],ebx ; set news scope parent to the current one so we push it on top

    mov [current_scope], eax


    mov ecx, [ebp+8]
    mov ecx, [ecx+data_ptr.mem]

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

    ; push eax
    ; push edx

    ; push eax
    ; push debug_output_lu 
    ; call printf
    ; add esp,8

    ; pop edx
    ; pop eax

    mov esi, dword[edx+scope_overlord.parent]
    mov [eax+scope_overlord.parent], esi

    ; push eax
    ; push edx

    ; push eax
    ; push debug_output_lu 
    ; call printf
    ; add esp,8

    ; pop edx
    ; pop eax

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

    ; ecx current member to clone to
    ; edx new member to clone from
.clone_members:
    mov eax, [edx+scope_member.data] ; intermediate for copying data location
    mov ebx, [edx+scope_member.identifier] ; intermediate for copying identifier location

    ; push eax
    ; push ebx
    ; push ecx
    ; push edx

    ; push debug_was_here
    ; call puts
    ; add esp,4

    ; pop edx
    ; pop ecx
    ; pop ebx
    ; pop eax

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
    pop ecx

    mov [ecx + scope_member.next], eax ; set next for current member
    mov edx, [edx+scope_member.next] ; go to next

    mov ecx, eax ; next to clone to

    jmp .clone_members

.pre_quit_empty_scope_data:
    ; report empty scope data as WARN for now
    ; push empty_scope_data_report_string
    ; call puts
    ; add esp,4

.quit:
    leave
    ret

new_scope_attached_to_and_replacing_current:
    ; makes new scope overlord with no member and replaces the current scope with it
    push ebp
    mov ebp, esp

    push scope_overlord_size
    call malloc
    add esp,4

    test eax,eax
    jz error_somewhere

    mov edx, [current_scope]
    mov [eax + scope_overlord.parent], edx
    mov dword[eax + scope_overlord.scope_data], 0
    
    mov dword[current_scope], eax 

    leave
    ret

pop_scope_and_replace_with_parent:
    ; pop current_scope and replaces with its parent
    push ebp
    mov ebp, esp

    mov eax, [current_scope]
    mov eax, [eax + scope_overlord.parent]

    mov dword[current_scope], eax 

    leave
    ret

assign_in_scope:
    ; assigns var in scope
    ; [ebp+8] -> scope | [ebp+12] -> data to assign | [ebp+16] -> identifier to bind to
    push ebp
    mov ebp, esp

    ; push eax
    ; push ecx
    ; push edx

    ; push dword[ebp+16]
    ; call puts
    ; add esp,4

    ; pop edx
    ; pop ecx
    ; pop eax

    ; step one make new scope_member entry
    push scope_member_size
    call malloc 
    add esp,4

    test eax,eax
    jz error_somewhere

    ; get first scope entry to set new first scope element in a second
    mov ebx, [ebp+8]
    mov ebx, [ebx+scope_overlord.scope_data]
    
    mov [eax + scope_member.next], ebx
    
    mov ebx, [ebp+12]

    mov [eax + scope_member.data], ebx

    mov ebx, [ebp+16]
    
    mov [eax + scope_member.identifier], ebx

    ; now set new first scope member / scope_data for scope_overlord
    mov ebx, [ebp+8]
    mov [ebx+scope_overlord.scope_data], eax

    leave
    ret

initialize_function_pointer:
    ; initializes function pointer with corresponding (compressed // dont think i have to :]) scope and code location pointer
    ; [ebp+8] -> scope | [ebp+12] -> function pointer to build for | [ebp+16] output
    push ebp
    mov ebp, esp

    ; step one compress current scope ;)
    mov eax, [ebp+8]

    ; push eax
    ; push debug_output_lu
    ; call printf
    ; add esp,8

    push 0 ; clones scope
    push eax
    call auxilary_clone_scope
    add esp,4

    ; push eax
    ; push ecx
    ; push edx

    ; push _0_ll_item_0_actual
    ; call puts
    ; add esp,4

    ; pop edx
    ; pop ecx
    ; pop eax

    pop ebx
    mov ecx, ebx ; scope_overlord to use later

.clone_more_parents:
    cmp [ebx + scope_overlord.parent], dword 0 ; we can continue making our initialized function pointer
    je .continue_initializing

    ; we need to clone more!

    mov edx, [ebx + scope_overlord.parent]

    push ebx

    push 0
    push edx
    call auxilary_clone_scope
    add esp,4
    pop eax

    pop ebx

    mov [ebx + scope_overlord.parent], eax
    mov ebx, eax

    jmp .clone_more_parents

.continue_initializing:
    ; make new initialized function pointer
    push ecx ; our cloned scope stack

    push init_func_pointer_size
    call malloc 
    add esp,4

    test eax,eax
    jz error_somewhere

    pop ecx

    mov [eax + init_func_pointer.scope], ecx

    mov ebx, [ebp+12]

    mov [eax + init_func_pointer.actual_func_ptr], ebx

    ; now make data_ptr
    push eax

    push data_ptr_size
    call malloc
    add esp,4

    test eax,eax
    jz error_somewhere

    pop ebx

    mov [eax + data_ptr.type], dword 6
    mov [eax + data_ptr.mem], ebx

    mov [ebp+16], eax

    leave
    ret

accept_to_formals:
    ; assigns variables in lambda call from linked list of identifiers and ll of data
    ; [ebp+8] data ptr struc with ident list | [ebp+12] call ll
    push ebp
    mov ebp, esp

    mov eax, [ebp+8]

    cmp dword[eax + data_ptr.mem], 0
    je .exit

    mov eax, [eax + data_ptr.mem] ; first linked list item of identifiers
    mov ebx, [ebp+12] ; first data linked list item

.assign_loop:
    cmp dword[eax + linked_list_node.data], 0
    je .exit

    mov ecx, [eax + linked_list_node.data]
    mov ecx, [ecx + data_ptr.mem]

    push ebx
    push eax

    push ecx
    push dword[ebx + linked_list_node.data]
    push dword[current_scope]
    call assign_in_scope
    add esp,12

    pop eax
    pop ebx

    cmp dword[eax + linked_list_node.next], 0
    je .exit

    mov eax, [eax + linked_list_node.next]
    mov ebx, [ebx + linked_list_node.next]

    jmp .assign_loop
.exit:
    leave 
    ret

auxilary_is_true_in_cond:
    ; [ebp+8] data_ptr for boolean | [ebp+12] output either 0 or 1
    push ebp
    mov ebp, esp

    mov eax, [ebp+8]
    mov eax, [eax + data_ptr.mem]
    mov eax, [eax]

    mov [ebp+12],eax

    leave
    ret