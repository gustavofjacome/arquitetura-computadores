#Faça um programa que leia um inteiro representando um mês do ano Edulandês e imprima a quantidade de dias que tem esse mês.

.text
main:  addi $v0, $zero, 5
       syscall
       add $t0, $zero, $v0 #mes
       
       
       addi $t1, $zero, 8 # $t1 <= 8
       
       div $t0, $t1  # hi <= resto ($t0/$t1)
                   # lo <= quo ($t0/$t1)
                 
       mflo $t3            
       add $t2, $t0, $t3
       
       andi $t4, $t2, 1
       
       addi $a0, $t4, 30
       
       addi $v0, $zero, 1
       syscall
       
       
       addi $v0, $zero, 10
       syscall