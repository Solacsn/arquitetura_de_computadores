# Q.12 - Lista 01

.text 
main:  addi $2, $0, 5
       syscall
       add $8, $0, $2
       
       addi $2, $0, 5
       syscall
       add $9, $0, $2
       
       addi $2, $0, 5
       syscall
       add $10, $0, $2
       
       addi $11, $0, 27 # soma dos pesos
       
       sll $18, $8, 1
       add $18, $18, $8 # 3 * n1
       
       sll $19, $9, 3
       add $19, $19, $9 # 9 * n2
       
       sll $20, $10, 4
       sub $20, $20, $10 # 15 * n3
       
       add $21, $18, $19
       add $21, $21, $20
       
       div $21, $11
       
       mflo $4
       addi $2, $0, 1
       syscall
       
       addi $2, $0, 10
       syscall
       