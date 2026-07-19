section .data
    msg db "ASSEMBLY LAB'e Hos Geldiniz!", 0x0A  ; Mesajımız ve satır sonu karakteri (\n)
    msg_len equ $ - msg                         ; Mesajın uzunluğunu otomatik hesapla

section .text
    global _start

_start:
    ; 1. Ekrana Yazdırma (sys_write sistem çağrısı)
    mov rax, 1          ; syscall numarası: 1 (sys_write)
    mov rdi, 1          ; argüman 1: Dosya tanımlayıcı (1 = stdout / ekran)
    mov rsi, msg        ; argüman 2: Yazdırılacak mesajın bellek adresi
    mov rdx, msg_len    ; argüman 3: Yazdırılacak mesajın uzunluğu
    syscall             ; Linux çekirdeğine çağrı yap!

    ; 2. Programdan Güvenli Çıkış (sys_exit sistem çağrısı)
    mov rax, 60         ; syscall numarası: 60 (sys_exit)
    xor rdi, rdi        ; argüman 1: Çıkış kodu (0 = Hata yok, 'xor rdi, rdi' rdi'yi sıfırlar)
    syscall             ; Linux çekirdeğine çağrı yap!
