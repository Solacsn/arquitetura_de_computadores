.text
main: addi $2, $0, 5
      syscall
      add $8, $0, $2
      
      addi $9, $0, 2
      mult $8, $9
      
      mflo $4
      add $10, $0, $4
      addi $2, $0, 1 
      syscall
      