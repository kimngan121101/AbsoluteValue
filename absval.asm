.text
.globl absval

absval:

bge $a0, $0, return # if int >= 0 jump to main

not $v0, $a0 # 1's complement
addi $v0, $v0, 1

return:

jr $ra
 