#Q10 - Lista 01
.text
main: addi $2, $0, 12
      syscall
      
      addi $8, $2, -32
      
      addi $4, $0, '\n'
      addi $2, $0, 11
      syscall
      
      add $4, $0, $8
      addi $2, $0, 11
      syscall
      
      addi $2, $0, 10
      syscall
      
      