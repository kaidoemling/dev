.global findSalariesSum
findSalariesSum:
    push %rbp
    mov %rsp, %rbp

    mov $0, %rax     # sum
    mov $0, %rcx     #increment rcx

loop:
    cmp %rsi, %rcx
    jge done

    mov %rcx, %rdx
    imul $12, %rdx     #size of each employee is 12 bytes
    mov 8(%rdi, %rdx, 1), %r8     #access salary of each employee
    add %r8, %rax
    inc %rcx

    jmp loop

done:
    pop %rbp
    ret
