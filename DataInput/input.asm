segment .data
    CR          equ 0xD         ;   CARRIEGE RET
    LF          equ 0xA         ;   LINE FEED
    NULL        equ 0x0         ;   FINAL DA CADEIA DE CARACTERES
    SYS_CALL    equ 0x80        ;   ENVIA INFORMACAO AO SO
    ;   RAX
    SYS_READ    equ 0x3         ;   OPERACAO DE LEITURA
    SYS_WRITE   equ 0x4         ;   OPERACAO DE ESCRITA
    SYS_EXIT    equ 0x1         ;   CHAMADA PARA FINALIZAR
    ;   RBX
    RET_EXIT    equ 0x0         ;   RETURNO SUCESSO
    STD_IN      equ 0x0         ;   ENTRADA PADRAO
    STD_OUT     equ 0x1         ;   SAIDA PADRAO

section .data
    msg db "Entre com seu nome: ", CR, LF
    tam equ $- msg

section .bss
    nome resb 1

section .text

global _start

_start:
    ; SOLICITA O NOME
    mov RAX, SYS_WRITE
    mov RBX, STD_OUT
    mov RCX, msg
    mov RDX, tam
    int SYS_CALL
    ; LE O NOME     
    mov RAX, SYS_READ
    mov RBX, STD_IN
    mov RCX, nome
    mov RDX, 0xA
    int SYS_CALL

    mov RAX, SYS_EXIT
    mov RBX, RET_EXIT
    int SYS_CALL