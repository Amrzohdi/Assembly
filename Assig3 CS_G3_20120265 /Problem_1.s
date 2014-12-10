.data
	array1: .space 40000
.text

.globl main
 	main:
 		
 		la $t0, array1 # load Address of array1 to this register
 		li $s2, 0 # index
 		fill:
			li $v0, 5
			syscall #takes integer input
			sw $v0, ($t0)
			addi $t0, $t0, 4
			bne $v0, $zero, fill
 		
 		la $t0, array1	
	 	li $v0, 5
	 	syscall
	 	li $a0,-1
	 	li $s1, -1
 	loop:
 		beq $s1,$zero, exit
 		addi $s2,$s2, 1
	 	lw $s1, ($t0)
	 	addi $t0,$t0,4
		bne $v0,$s1,loop

		addi $s2, $s2,-1 
		add $a0,$s2,$zero
		

 		exit:
 			li $v0,1
 			syscall
 			li $v0, 10
 			syscall
 .end main
