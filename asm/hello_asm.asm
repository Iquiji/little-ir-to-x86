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

    cmp eax,16000000
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

.loop
    jmp .loop

    ;;  return 0
    mov eax, 0
    ret