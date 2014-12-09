.data
	string1:	 .asciiz	"Enter your number: "
	ss0: .asciiz "F"
	ss1: .asciiz "D"
	ss2: .asciiz "C"
	ss3: .asciiz "CC"
	ss4: .asciiz "B"
	ss5: .asciiz "BB"
	ss6: .asciiz "A"
	ss7: .asciiz "AA"
 .text

.globl main
 	main:
 		li $t0, 49
 		li $t1, 69
 		li $t2, 74
 		li $t3, 79
 		li $t4, 84
 		li $t5, 89
 		li $t6, 94
 		li $t7, 100

 		la $a0, string1
 		li $v0, 4
 		syscall

 		li $v0, 5
 		syscall
		
 		bgt $v0, $t0,j1
 			la $a0,ss0
 			li $v0, 4
 			syscall
 			j exit
 		j1:
			bgt $v0, $t1,j2
			la $a0,ss1
			li $v0, 4
			syscall
			j exit

		j2:
			bgt $v0, $t2,j3
 			la $a0,ss2
 			li $v0, 4
 			syscall
 			j exit		
 		j3:
 			bgt $v0, $t3,j4
 			la $a0,ss3
 			li $v0, 4
 			syscall
 			j exit
 		j4:
 			bgt $v0, $t4,j5
 			la $a0,ss4
 			li $v0, 4
 			syscall
 			j exit
 		j5:
 			bgt $v0, $t5,j6
 			la $a0,ss5
 			li $v0, 4
 			syscall
 			j exit

 		j6:
 			bgt $v0, $t6,j7
 			la $a0,ss6
 			li $v0, 4
 			syscall
 			j exit
 		
 		j7:
			la $a0,ss7
			li $v0, 4
			syscall
		
 		exit:
 			li $v0, 10
 			syscall
 .end main