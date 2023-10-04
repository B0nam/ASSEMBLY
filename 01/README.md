# PRIMEIRO PROGRAMA EM ASM
O código asm está comentado com informações relevantes.

## SECTIONS
Programas ASM são separados em sections, onde cada uma possui uma função especifica dentro da composição do programa.

### section .data
Section onde normalmente são salvas as "constantes" do programa.

### section .bss
Section onde são armazenadas as nossas "variaveis".

### section .text
Section onde o programa de fato de inicia, aqui se encontra a "logica"

## COMPILACAO/LIN
Para compilarmos o programa escrito em ASM, vamos utilizar o nasm, o qual transforma o código baixo nível em linguagem de máquina.

```bash
nasm -f elf64 hello.asm
```

Após compilarmos o programa, devemos linkar com as bibliotecas do sistema operacional para que possamos executar o programa.

Para isso utilizamos o utilitario ld.

```bash
ld -s -o hello hello.o
```