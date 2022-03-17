.data
	m1: .asciiz "Enter an integer: "
	m2: .asciiz "The absolute value is "
.text 
.globl main

main:

la $a0, m1 # print m1
li $v0, 4
syscall  

li $v0, 5 # read int
syscall

move $a0, $v0 # arg has int
jal absval # do the thing

move $t0, $v0 # save $v0 into $t0

la $a0, m2 # print m2
li $v0, 4
syscall

move $a0, $t0 # $a0 has returned value
li $v0, 1 # print int
syscall

li $v0, 10 # exit
syscall 



