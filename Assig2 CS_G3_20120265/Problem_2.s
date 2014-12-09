.data
	string1:	 .asciiz	"Enter your number: "
	string2:     .asciiz    "Even\n"
	string3:     .asciiz    "Odd\n"
.text

.globl main
 	main:

 		la $a0, string1
 		li $v0, 4
 		syscall
 		
 		li $v0, 5
 		syscall
 		beq $v0, $zero, exit

 		li $s0, 2
 		div $t1, $v0, $s0
 		mul $s0, $t1, $s0
 		bne $s0, $v0, printodd
 			
			la $a0, string2
			li $v0, 4
			syscall
			j main
		printodd:
			la $a0, string3
			li $v0, 4
			syscall
			j main
 		exit:
 			li $v0, 10
 			syscall
 .end main