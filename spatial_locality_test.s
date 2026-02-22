.data
array: .word 1,2,3,4,5,6,7,8,9,10

.text
.globl main
main:
    la x1, array
    li x2, 10
    li x3, 0

loop:
    lw x4, 0(x1)
    add x3, x3, x4
    addi x1, x1, 4
    addi x2, x2, -1
    bnez x2, loop

    nop
