.global sumOfPowers
sumOfPowers:
    push %rbp
    mov %rsp, %rbp

    mov $0, %rax     # sum (answer)
    mov $1, %rcx     # compare rcx to rdi and increment

loop:
    cmp %rdi, %rcx
    jg done
    
    mov %rcx, %rdx
    imul %rdx, %rdx
    add %rdx, %rax

    inc %rcx
    
    jmp loop
    
done:
    pop %rbp
    ret