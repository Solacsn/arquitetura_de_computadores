# Q.4 - Lista 04

.text
main:  addi $2, $0, 5
       syscall
       add $20, $0, $2 # lim inf
       
       addi $2, $0, 5
       syscall
       addi $21, $2, 1 # lim sup +1
       
test:  beq $20, $21, fim

       andi $8, $20, 1 #se for um é impar, se for 0 é par
       
       bne $8, $0, impar
       add $4, $0, $20
       addi $2, $0, 1
       syscall
       add $4, $0, '\n'
       addi $2, $0, 11
       syscall
       
       
impar:
       

       addi $20, $20, 1
       j test
fim:
       
       
       addi $2, $0, 10
       syscall

        