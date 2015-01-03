.data
	string1:	 .asciiz	""
.text

pal:
	la $s0, string1
	la $s1, string1
	lb $s2, ($s1)
	loop:
		beqz $s2, cont
		addi $s1, $s1, 1
		lb $s2, ($s1)
	j loop
	cont:
		
	addi $s1, $s1, -2
	li $a0, 0

	loop1:
	bge $s0, $s1, to_main
		lb $s2, ($s0)
		lb $s3, ($s1)
		addi $s0, $s0, 1
		addi $s1, $s1, -1
	beq $s2, $s3, loop1

	li $a0,1

	to_main:
	jr $ra
.globl main
 	main:
 		la $a0, string1
 		
 		li $v0, 8
 		syscall
 		
 		jal pal

 		
 		
 		exit:
 			li $v0, 1
 			syscall
 			li $v0, 10
 			syscall
 .end main