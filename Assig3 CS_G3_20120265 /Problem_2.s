.data
	string1:	 .asciiz	""
.text

.globl main
 	main:
 		la $a0, string1
 		
 		li $v0, 8
 		syscall
 		
 		

 		
 	loop1: 
 		lb $s3, ($a0)
 		beqz $s3, exit # while( $a0 != null ){
 			addi $a2, $a0, 1

 			
 		loop2:
 			lb $s3, ($a2)
 			beqz $s3, f # while( $a2 != null ){
 				lb $s0, ($a0) # $s0= string1[idx]
 				lb $s1, ($a2) # $s1= string1[idx1]
 				bgt $s1,$s0, dont
 					sb $s0, ($a2)
 					sb $s1, ($a0)
 				dont:
 				addi $a2, $a2, 1
 			j loop2 	# }
 			f:
 			addi $a0, $a0, 1 # idx++
 		j loop1			 # }
 		
 		

 		exit:
 			la $a0, string1
 			li $v0, 4
 			syscall
 			li $v0, 10
 			syscall
 .end main