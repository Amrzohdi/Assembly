.data #here we declare variables
.text

.globl main
	main: #here we write the instructions
		li $v0, 5 		  #for loading integer
		syscall   		  #calling the input
		add $s0, $0, $v0  #$s0=the input
		li $v0, 5		  #for loading integer 
		syscall
		add $s1, $0, $v0  #$s1=the second input
		mul $s2, $s1, $s0 #$s2= $s1*$s0 the area
		add $s0, $s0, $s1 #$s1= $s1+$s2
		li  $s1, 2        #$s2= 2
		mul $s0,$s0,$s1   #$s1= $s1*$s2 the circumference

		add $a0, $0, $s2  #the area
		li $v0, 1         #prepare it to print the integer value in $a0
		syscall		
		add $a0, $0, $s0  #the circumference 
		li $v0, 1         #prepare it to print the integer value in $a0
		syscall
		li $v0, 10        #end of program
		syscall


.end main