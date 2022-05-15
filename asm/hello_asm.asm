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

section .data
msg: 
    db "Hello Assembler!", 0Ah, 0h
fmtd_str:
    db "%lu", 0Ah, 0h
fmtd_str_address:
    db "address: %lu", 0Ah, 0h
fmtd_str_success:
    db "success: %lu", 0Ah, 0h 
fmtd_str_compare:
    db "comparing: '%s' & '%s'", 0Ah, 0h 
str_1: db "trol1222ABF" , 0h
str_2: db "trol1222ABF" , 0h

static0_actual dd 54321 ; Integer
static0_data_ptr_struc:
    istruc data_ptr
        at data_ptr.type, dd    1
        at data_ptr.mem, dd     static0_actual
    iend
section .text

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

    ; string comparision:
    mov ecx, 0            ; index and loop counter
.loop:  
    push ecx
    push ecx
    
    push ecx ; print counter
    push dword fmtd_str
    call printf
    add esp, 8

    pop ecx

    ; print comparision
    mov eax, str_1
    add eax, ecx
    push eax

    mov eax, str_2
    add eax, ecx
    push eax

    push dword fmtd_str_compare
    call printf
    add esp, 12

    ; compare
    pop ecx

    mov eax, 0
    mov ebx, 0  
    mov al, [str_1+ecx]   ; load a character from passwd
    mov bl, [str_2+ecx]   ; is it equal to the same character in the input?
    cmp al,bl
    jne .unequal          ; if not, the password is incorrect
    inc ecx               ; advance index
    cmp al, 0             ; reached the end of the string?
    je .equal             ; loop until we do
    jmp .loop            ; if this line is reached, the password was correct

.unequal: ; if this line is reached, the password was wrong
    push 0
    push dword fmtd_str_success
    call printf
    add esp, 8
    jmp .exit
.equal: ; jump to correct_func if they are equal
    push 1
    push dword fmtd_str_success
    call printf
    add esp, 8
    jmp .exit
.exit:

    push str_1
    push str_2
    call string_cmp

    push eax
    push dword fmtd_str_address
    call printf
    add esp, 8

    ; fix ebp from stack
    pop ebp

    ;;  return 0
    mov eax, 0
    ret


string_cmp:
    push ebp
    mov ebp, esp

    mov esi, [ebp+12]
    mov edi, [ebp+8]

    push esi
    push edi
    push dword fmtd_str_compare
    call printf
    add esp, 8

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
    
    mov  esp,ebp        ; standard function return stuff - we
    pop  ebp            ; have to restore %ebp and %esp to where
    mov eax, 1
    ret

.if_unequal: ; if not go to next
    
    leave
    mov eax,0
    ret