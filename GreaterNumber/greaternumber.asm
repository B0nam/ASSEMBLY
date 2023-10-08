section .data
;   db = Define Byte        (1 byte)
;   dw = Define Word        (2 bytes)
;   dd = Define Double Word (4 bytes)
;   dq = Define Quadord     (8 bytes)
    x dd 50
    y dd 10
    MSG_X_IS_GREATER db 'X eh maior que Y', 0xD, 0xA
    TAM_MSG_X equ $- MSG_X_IS_GREATER
    MSG_Y_IS_GREATER db 'Y eh maior que X', 0xD, 0xA
    TAM_MSG_Y equ $- MSG_Y_IS_GREATER
section .text

global _start

_start:
    ;   je  =   JUMP IF EQUAL
    ;   jg  =   JUMP IF GREATER
    ;   jge =   JUMP IF GREATER OR EQUAL
    ;   jl  =   JUMP IF LESS
    ;   jle =   JUMP IF LESS OR EQUAL
    ;   jne =   JUMP IF NOT EQUAL
    mov EAX, DWORD[x]   ;   INDICA QUE O RAX DEVE LER 4 BYTES DA VARIAVEL X
    mov EBX, DWORD[y]   ;   INDICA QUE O RAX DEVE LER 4 BYTES DA VARIAVEL Y
    cmp EAX, EBX        ;   COMAPARACAO ENTRE OS VALORES
    jge X_IS_GREATER    ;   JUMP PARA GREATER SE X FOR MAIOR
    ;   CASO NAO SEJA MAIOR A EXECUCAO CONTINUARA
    mov ECX, MSG_Y_IS_GREATER
    mov EDX, TAM_MSG_Y
    jmp FIM_PROGRAMA

X_IS_GREATER:
    mov ECX, MSG_X_IS_GREATER
    mov EDX, TAM_MSG_X

FIM_PROGRAMA:
    mov EAX, 0x4
    mov EBX, 0x1
    int 0x80

    mov EAX, 0x1
    mov EBX, 0x0
    int 0x80