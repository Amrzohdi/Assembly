.data

.text

.globl main
	main:
		li $v0, 6 			 #prepare it for taking float number in $f0
		syscall 			 #calling it to load the input in $f0
		li.s $f4,0.0		 #initialize $f4 by zero
		add.s $f1,$f0,$f4	 #make $f1= $f0 + 0
		li $v0, 6			 #prepare it for taking float number int $float0
		syscall				 #calling it to load the input in $f0
		add.s $f2, $f4, $f0  #make $f2= $f0
		li $v0, 6			 #prepare it for taking float number in $f0
		syscall				 #calling it to load the input in $f0
		add.s $f3, $f4, $f0  #$f3= $f0
		
		div.s $f1, $f1, $f2  #$f1= $f1 / $f2
		sub.s $f12, $f3, $f1 #$f12= $f3-$f1
		li $v0, 2			 #prepare it to print the float value in $f12
		syscall				 
		li $v0, 10			 #end of program
		syscall

.end main