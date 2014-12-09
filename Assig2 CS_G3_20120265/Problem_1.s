.data
	array1: .space 20
	reversed: .space 20
.text

.globl main
 	main:
 		
 		la $t0, array1 # load Address of array1 to this register

 		li $s0, 0 #counter
 		li $s1, 5 #size of array

 		fill:
	 		beq $s0, $s1 , reverse
	 			li $v0, 5
	 			syscall #takes integer input
	 			sw $v0, ($t0) 
	 			addi $t0, $t0, 4
	 			addi $s0, $s0, 1
	 			j fill
 		reverse:
 			li $s0, 0 
 			la $t1, reversed
 			li $s3, 4
 		loop1:
 			beq $s0, $s1, print
 				sub $t0, $t0 , $s3
 				lw $a0 , ($t0)
 				sw $a0 , ($t1)
 				addi $t1, $t1, 4
 				addi $s0, $s0 , 1
 				j loop1
 		print:
 			li $s0 , 0
 			la $t1, reversed
 			li $v0, 1

 		loop2:
 			beq $s0 , $s1, exit
 			lw $a0, ($t1)
 			addi $t1, $t1 , 4
 			add $s0, $s0, 1
 			syscall
 			j loop2

 		exit:
 			li $v0, 10
 			syscall
 .end main