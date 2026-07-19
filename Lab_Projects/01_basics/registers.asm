section .text
    global _start

_start:
    ; register manipulasyon bölümü
    mov rax, 0x1122334455667788
    mov al, 0xAA
    mov eax, 0xFFFFFFFF

    ; rbx üzerinde işlem yaparak sonuçta 130 a eşitliyoruz
    mov rbx, 100
    add rbx, 50
    sub rbx, 20

    ; sys_exit dönüş koduna rbx (130) değerini koyarak çıkıyoruz
    mov rax, 60
    mov rdi, rbx
    syscall