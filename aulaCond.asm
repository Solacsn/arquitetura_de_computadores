# Testar se dois valores são iguais

.text

main:  addi $2, $0, 5
       syscall
       add $8, $0, $2
       
       addi $2, $0, 5
       syscall
       add $9, $0, $2
       
       beq $8, $9, iguais
       addi $4, $0, '~'
       
iguais: addi $4, $0, '='

imp:   addi $2, $0, 1
       syscall
       addi $2, $0, 10
       syscall