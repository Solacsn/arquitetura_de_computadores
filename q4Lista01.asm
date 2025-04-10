.text
main: addi $2, $0, 5 #recebe o primeiro valor
      syscall
      add $8, $0, $2 #armazena o valor no $8
      
      addi $2, $0, 5 #recebe o segundo valor
      syscall
      add $9, $0, $2 #armazena o valor no $9
      
      addi $4, $0, 2 #armazena o primeiro peso
      addi $5, $0, 3 #armazena o segundo peso
      mult $8, $4 #multiplica o 1 valor pelo 1 peso

      mflo $5 #armazna o resultado
      mult $9, $5 #multiplica o 2 valor pelo 2 peso
      mflo $6 #armazena o resultado
      
      add $7, $5, $6 #soma os dois resultados
      add $11, $4, $5 #soma os dois pesos
      div $7, $11 #divide os dois
     
      mflo $4 #armazena o resultado
      add $12, $0, $4 
      addi $2, $0, 1 #chama a função de imprimir
      syscall
