.global findPaymentsSum
findPaymentsSum:
    push %rbp
    mov %rsp, %rbp

    mov $0, %rax     # sum
    mov $0, %rcx     #increment rcx

loop:
    cmp %rsi, %rcx     #rsi aka int num_of_pamyments
    jge done

    mov 8(%rdi, %rcx, 4), %rdx     #rdi aka CUSTOMER* c
    add %rdx, %rax
    inc %rcx

    jmp loop

done:
    pop %rbp
    ret
