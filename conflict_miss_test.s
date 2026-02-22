.data
A: .space 64
B: .space 64

.text
.globl main
main:
    la x1, A
    la x2, B
    li x3, 16

loop:
    lw x4, 0(x1)
    lw x5, 0(x2)
    addi x1, x1, 16
    addi x2, x2, 16
    addi x3, x3, -1
    bnez x3, loop

    nop
