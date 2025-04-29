# Q.20 - Lista 01


.text

main:  addi $2, $0, 5
       syscall
       add $8, $0, $2 # Ano = $8
       addi $25, $0, 19
       div $8, $25
       mfhi $9 # $9 = a
       
       addi $25, $0, 100
       div $8, $25
       mflo $10 # $10 = b
       mfhi $11 # $11 = c
       
       addi $25, $0, 4
       div $10, $25
       mflo $12 # $12 = d
       mfhi $13 # $13 = e
       addi $24, $10, 8 # b + 8
       addi $25, $0, 25
       div $24, $25
       mflo $14 # $14 = f
       sub $24, $10, $14 # b - f
       addi $24, $24, 1 # b - f + 1
       addi $25, $0, 3
       div $24, $25
       mflo $15 # $15 = g
       addi $25, $0, 19
       mul $24, $9, $25 # 19 x a
       add $24, $24, $10 # 19 x a + b
       sub $24, $24, $12 # 19 x a + b - d
       sub $24, $24, $15 # 19 x a + b - d - g
       addi $24, $24, 15 # 19 x a + b - d - g + 15
       addi $25, $0, 30
       div $24, $25
       mfhi $16 # $16 = h
       addi $25, $0, 4
       div $11, $25 
       mflo $17 # $17 = i
       mfhi $18 # $18 = k
       sll $23, $13, 1 # 2x e
       sll $24, $17, 1 # 2 x i
       add $24, $23, $24 # 2 x e + 2 x i
       addi $24, $24, 32 # 32 + 2 x e + 2 x i
       sub $24, $24, $16 # 32 + 2 x e + 2 x i - h
       sub $24, $24, $18 # 32 + 2 x e + 2 x i - h - k
       addi $25, $0, 7
       div $24, $25
       mfhi $19 # $19 = L
       addi $24, $0, 11
       mul $24, $24, $16 # 11 x h
       addi $23, $0, 22
       mul $23, $23, $19 # 22 x L
       add $24, $24, $23 # 11 x h + 22 x L
       add $24, $24, $9 # a + 11 x h + 22 x L
       addi $25, $0, 451
       div $24, $25
       mflo $20 # $20 = m
       addi $23, $0, 7
       mul $23, $23, $20 # 7 x m
       add $24, $16, $19 # h + L
       sub $24, $24, $23 # h + L - 7 x m
       addi $24, $24, 114 # h + L - 7 x m + 114
       addi $25, $0, 31
       div $24, $25
       mflo $21 # $21 = MES
       mfhi $22
       addi $22, $22, 1 # $22 = DIA
       
       add $4, $0, $22
       addi, $2, $0, 1
       syscall
       
       add $4, $0, '/'
       addi, $2, $0, 11
       syscall
       
       add $4, $0, $21
       addi, $2, $0, 1
       syscall
       
       
       
       addi $2, $0, 10
       syscall
       
       
       
       
      
       
       
        
        
      
       