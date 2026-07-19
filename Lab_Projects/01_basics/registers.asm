section .text
    global _start

_start:
    ; --- 1. Temel Taşıma (MOV) İşlemleri ---
    mov rax, 0x1122334455667788  ; RAX yazmacına 64-bitlik devasa bir hex değer yükle
    
    ; Alt bölmeleri manipüle ederek üst kısımların nasıl korunduğunu gözlemleyelim:
    mov al, 0xAA                 ; Sadece en alttaki 8-biti değiştir (AL)
    mov ah, 0xBB                 ; AX'in üstündeki 8-biti değiştir (AH)
    mov ax, 0xCCCC               ; AX'in tamamını (16-bit) değiştir
    
    ; Şimdi 32-bit sıfırlama kuralını test edelim:
    mov eax, 0xFFFFFFFF          ; EAX'e yazınca RAX'in üst yarısı (0x11223344) sıfırlanacak mı?

    ; --- 2. Temel Matematik (ADD / SUB) ---
    mov rbx, 100                 ; RBX = 100
    add rbx, 50                  ; RBX = RBX + 50  (Sonuç: 150)
    sub rbx, 20                  ; RBX = RBX - 20  (Sonuç: 130)

    ; --- 3. Çıkış Yap (Sistem Çağrısı) ---
    mov rax, 60                  ; sys_exit syscall numarası (60)
    mov rdi, rbx                 ; Çıkış kodu olarak RBX'teki değeri gönderelim (130 dönecek)
    syscall