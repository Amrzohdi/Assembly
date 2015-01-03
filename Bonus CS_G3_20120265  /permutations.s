.data
	string: .asciiz ""
.text

permutaions:# s0= i, $s1= string[i], $s2= j, $s3=string[j]
	addi $s2, $s0, 0
	#addi $s5, $s0, 1
	#lb $s6, ($s5)
	lb $s3, 1($s2)
	lb $s1, ($s0)

	bnez $s3, NOT
		syscall
		jr $ra
	NOT:
	beqz $s3, exit1
		
			#addi $s5, $s5, 1
			#lb $s6, ($s5)
			lb $s3, ($s2)
			lb $s1, ($s0)

		sb $s1, ($s2)
		sb $s3, ($s0)

		addi $sp, $sp, -4
		sw $ra, ($sp)
		
		addi $sp, $sp, -4
		sw $s0, ($sp)
		
		addi $sp, $sp, -4
		sw $s2, ($sp)

		addi $s0, $s0, 1
		

		jal permutaions

		lw $s2, ($sp)
		addi $sp, $sp, 4
		
		lw $s0, ($sp)
		addi $sp, $sp, 4
		
		lw $ra, ($sp)
		addi $sp, $sp, 4
		
		lb $s3, ($s2)
		lb $s1, ($s0)	

		sb $s1, ($s2)
		sb $s3, ($s0)

		addi $s2, $s2, 1
		lb $s3, 1($s2)
		j NOT
	exit1:
	jr $ra



.globl main
	main:
	la $a0, string
	li $v0, 8
	syscall
	la $s0, string
	li $v0,4
	jal permutaions

exit:
	li $v0, 10
	syscall
.end main
