.data
arr: .space 400

.text
.globl main
main:
    la x1, arr
    li x2, 100

loop:
    lw x3, 0(x1)
    addi x1, x1, 4
    addi x2, x2, -1
    bnez x2, loop

    nop
