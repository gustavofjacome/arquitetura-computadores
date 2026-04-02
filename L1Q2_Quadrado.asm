.text

main:
	addi $v0, $zero, 5 # 5 no v0 para chamar o syscall de leitura
	syscall
	mul $a0, $v0, $v0 # calculo do input do usuario ao quadrado, ja sendo salvo no a0 que sera printado
	addi $v0, $zero, 1
	syscall 
	
finish:
	addi $v0, $zero, 10
	syscall