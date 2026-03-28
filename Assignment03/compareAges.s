.global compareAges
compareAges:
    push %rbp
    mov %rsp, %rbp

    mov 4(%rdi), %rax
    mov 4(%rsi), %rcx

    cmp %rax, %rcx
    je one
    jne zero

one:
    mov $1, %rax  
    jmp done  

zero:
    mov $0, %rax
    jmp done

done:
    pop %rbp
    ret