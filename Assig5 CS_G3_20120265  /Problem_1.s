
.data
	str: .asciiz "hello World"
.text

read_int: 
	li $v0,5
	syscall
	jr $ra

# result= $s0, counter= $s1 
fact:
	addi $s0, $zero, 1

	loop:
	beq $v0, $zero , to_main
 	mul $s0, $v0, $s0
 	addi $v0, $v0, -1
 	j loop

  to_main:
	jr $ra
.globl main
 	main:

 	jal read_int
 	jal fact
	
 		exit:
 			addi $a0, $s0, 0
 			li $v0, 1
 			syscall
 			li $v0, 10
 			syscall
 .end main
