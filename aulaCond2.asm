

.text
main:  addi $20, $0, 0
       addi $10, $0, 10
       addi $9, $0, 0
      
teste: beq $9, $10, fimfor
       addi $2, $0, 5
       syscall
       
       add $20, $20, $2
       addi $9, $9, 1
       j teste
         
fimfor: add $4, $0, $20
       
imp:    addi $2, $0, 1
        syscall
       
        addi $2, $0, 10
        syscall