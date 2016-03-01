# Calculate sums of positive odd and negative even values in an array
#   in MIPS assembly using MARS
# for MYΥ-402 - Computer Architecture
# Department of Computer Engineering, University of Ioannina
# Aris Efthymiou

        .globl main # declare the label main as global. 
        
        .text 
     
main:
        la         $a0, length       # get address of length to $a0
        lw         $a0, 0($a0)       # get the length in to $a0

        la         $a1, input        # get address of array to $a1

        addiu      $s0, $zero, 0     # sum of positive odd values starts as 0
        addiu      $s1, $zero, 0     # sum of negative even values starts as 0

       loop:
       		addi $t1, $a1, 4
       		add $t1, $s3, $a1
       		lb $t0, 0($t1)
 			slt $t0, $a0, exitloop
 			andi $t2, $t0, 0x1
 			beq $t2, $zero, less
 				add $s1, $t2
 				addi $s1, $s1, 1
 			less:
 				add $s0, $t2
 				addi $s0, $s0, 4
 			j loop
 	  extiloop:
 				
 			
 			      	
        
exit: 
        addiu      $v0, $zero, 10    # system service 10 is exit
        syscall                      # we are outta here.
        
        ###############################################################################
        # Data input.
        ###############################################################################
        .data
length: .word 5 # Number of values in the input array
input:  .word 3, -2, 0, 4, -1
