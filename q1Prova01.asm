.text
main:  addi $2, $0, 5
       syscall
       add $8, $0, $2
       
#div 400
       addi $9, $0, 400
       div $8, $9
       mfhi $11 # se 0 então é bissexto
       
       sub $16, $0, $11
       not $16, $16
       srl $16, $16, 31
       
#div 100
       addi $9, $0, 100
       div $8, $9
       mfhi $12 # se 0 então não pode ser bissexto
       
       sub $17, $0, $12
       srl $17, $17, 31
       
# $10 ser 0
# ou
# $11 ser 0 e $12 diferente de 0

# $14 ser 1
# OU
# $16 ser 1 E 417 ser zero

       and $18, $16, $17
       or $4, $15, $18
       addi $2, $0, 1
       syscall
       
       
             