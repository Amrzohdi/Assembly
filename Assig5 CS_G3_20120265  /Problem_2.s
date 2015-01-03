.data
	string1:	 .asciiz	"Enter The factorial Number"
.text

small_latter:
	li $s0, 1
	li $s2, 122
	li $s3, 97
	bgt $s1, $s2, jump
	bst $s1, $s3, jump
	li $s0, 0
	jump:
		ja $ra

count_number_of_small_letter:
	
	beqz $s3, 



.globl main
 	main:
 		la $a0, string1


 .end main