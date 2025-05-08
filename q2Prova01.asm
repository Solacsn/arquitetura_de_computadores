# Questão 02 da primeira prova. Faça um programa que leia 4 numeros (numerador 1, denominador 1,
# numerador 2, denominador 2) e some as duas frações.

.text
main:  addi $2, $0, 5 
       syscall
       add $8, $0, $2 # n1
       
       addi $2, $0, 5
       syscall
       add $9, $0, $2 # d1
       
       addi $2, $0, 5
       syscall
       add $10, $0, $2 # n2
       
       addi $2, $0, 5
       syscall
       add $11, $0, $2 # d2
       
       mul $12, $9, $11 # d1 *  = den. resultado
       mul $13, $11, $8 # d2 * n1
       mul $14, $9, $10 # d1 * n1
       add $15, $13, $14  # num. resultado
       
       add $4, $0, $15
       addi $2, $0, 1
       syscall
       
       addi $4, $0, '/'
       addi $2, $0, 11
       syscall
       
       add $4, $0, $12
       addi $2,