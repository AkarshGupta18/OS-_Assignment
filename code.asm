
section .text
global main
extern printf,scanf

main:
    push rbp
    mov rbp,rsp
    sub rsp,16

    mov eax,0
    lea rdi,[msg]
    call printf

    mov eax,0
    lea rdi,[format1]
    lea esi,[integer]
    call scanf

    mov eax,0
    lea rdi,[msg2]
    call printf

    mov eax,0
    lea rdi,[format1]
    mov esi,[integer]
    call printf

    mov eax,0
    lea rdi,[msg3]
    call printf

    mov eax,0
    lea rdi,[format2]
    lea rsi,[string]
    call scanf

    mov eax,0
    lea rdi,[msg4]
    call printf 

    mov eax,0
    lea rdi,[string]
    call printf   

    add rsp,16
    leave
    ret

section .data
    msg: db "Enter a number: ",10,0
    msg2: db "The number you entered is:",10,0
    msg3: db "Enter a string: ",10,0
    msg4: db "The string you entered is:",10,0
    format1: db "%d",0
    format2: db "%s",0

section .bss
    integer:    resb 4
    string:     resb 70
