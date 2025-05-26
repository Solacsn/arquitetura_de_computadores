# Q. 15 - Lista 03

.data
prompt:     .asciiz "Digite um numero inteiro positivo: "
newline:    .asciiz "\n"
space:      .asciiz " "

.text
.globl main

main:
    # imprime o prompt
    li $2, 4
    la $4, prompt
    syscall

    # l� o n�mero n
    li $2, 5
    syscall
    move $8, $2     # $t0 = n

    li $9, 1          # $t1 = contador de n�meros a imprimir (inicia com 1)
    li $10, 1          # $t2 = linha atual (inicia com 1)

linha_loop:
    bgt $10, $8, fim  # se linha atual > n, termina

    move $11, $0    # $t3 = contador de n�meros por linha

num_loop:
    bge $11, $10, proxima_linha  # se j� imprimiu n�meros suficientes na linha, vai para pr�xima linha

    # imprime o n�mero atual ($t1)
    li $2, 1
    move $4, $9
    syscall

    # imprime um espa�o
    li $2, 4
    la $4, space
    syscall

    # incrementa o contador de n�mero e o contador da linha
    addi $9, $9, 1
    addi $11, $11, 1

    j num_loop

proxima_linha:
    # imprime nova linha
    li $2, 4
    la $4, newline
    syscall

    # incrementa o n�mero da linha
    addi $10, $10, 1
    j linha_loop

fim:
    li $2, 10
    syscall
