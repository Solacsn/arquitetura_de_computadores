# Q.11 - Lista 01

.text
main:  addi $2, $0, 5
       syscall
       add $8, $0, $2
       
       addi $10, $0, 10
       
       div $8, $10
       
       mfhi $20 # unidade
       mflo $8  
       
       div $8, $10
       mfhi $21 # dezena
       mflo $8
       
       div $8, $10
       mfhi $22 # centena
       mflo $8
       
       addi $2, $0, 1
       addi $4, $0, $20
       syscall
       
       addi $2, $0, 1
       addi $4, $0, $21
       syscall
       
       addi $4, $0, $22
       syscall