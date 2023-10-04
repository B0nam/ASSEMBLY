section .data
        msg db 'Hello, World!', 0xA     ; 0XA = VALOR 10, EM ASCII INDICA QUEBRA DE LINHA
        tam equ $- msg

section .text

global _start           ; PONTEIRO/LABEL CHAMADO _START NECESSARIO POR PADRAO

_start:
        mov RAX, 0x4    ; INFORMA AO SO QUE VAI SER ENVIADO ALGO PARA A SAIDA PADRAO
        mov RBX, 0x1    ; INFORMA AO SO QUE E A SAIDA PADRAO
        mov RCX, msg    ; INFORMA A MENSAGEM
        mov RDX, tam    ; INFORMA O TAMANHO DA MENSAGEM
        int 0x80        ; ENVIA AS INFORMACOES AO SO


        mov RAX, 0x1    ; INFORMA AO SO PARA FINALIZA O PROGRAMA
        mov RBX, 0x0    ; INFORMA AO SO PARA RETORNA O VALOR 0
        int 0x80        ; ENVIA AS INFORMACOES AO SO
