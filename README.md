# 🔬 ASSEMBLY LAB

> "Yazılımla donanımın buluştuğu yer: Assembly."

Bu depo, sıfırdan başlayarak Assembly dilinin derinliklerine inmek, donanım mimarisini anlamak, C dili ile Assembly arasındaki köprüyü kurmak ve gelecekteki **özel işletim sistemi / boot manager / aygıt sürücüsü** projelerime temel oluşturmak amacıyla oluşturulmuş kişisel bir laboratuvardır.

---

## 🗺️ Yol Haritası (Roadmap)

Bu laboratuvarda adım adım ilerleyeceğim yol haritam şu şekildedir:

### 📍 Faz 1: Temeller & Sözdizimi (Syntax)
* [ ] CPU Mimarisi (Registers, ALU, Program Counter)
* [ ] RAM ve Bellek Yönetimi (Stack vs. Heap, Segmentasyon)
* [ ] x86-64 / ARM Syntax Farkları (Intel vs. AT&T)
* [ ] Temel Komut Seti (`MOV`, `ADD`, `SUB`, `PUSH`, `POP`, `JMP`, `CMP`)

### 📍 Faz 2: Derin Konseptler & Donanım Etkileşimi
* [ ] Interrupts (Kesmeler - Donanımsal ve Yazılımsal)
* [ ] Sistem Çağrıları (Syscalls - Linux `int 0x80` veya `syscall`)
* [ ] Bellek Hizalama (Memory Alignment) ve Cache Dostu Kod Yazımı

### 📍 Faz 3: C to Assembly & Derleyici Sırları (Reverse Engineering Giriş)
* [ ] `gcc -S` çıktısını okuma ve anlamlandırma
* [ ] Derleyicinin ürettiği garip semboller (Name Mangling, Prologue, Epilogue)
* [ ] C Çağrı Standartları (Calling Conventions: `cdecl`, `stdcall`, `fastcall`)
* [ ] Optimizasyon seviyelerinin (`-O0`, `-O2`, `-O3`) Assembly çıktısına etkisi

### 📍 Faz 4: Lab Projeleri & Challenges
* [ ] Saf Assembly ile "Hello World" (Sıfır kütüphane, sadece syscall)
* [ ] C ile yazılmış bir fonksiyonu Assembly'den çağırmak (ve tam tersi)
* [ ] Kendi mini "Boot Sector" kodumu yazıp QEMU üzerinde çalıştırmak

---

## 📁 Klasör Yapısı

Projelerimi ve notlarımı düzenli tutmak için aşağıdaki klasör yapısını kullanacağım:

```text
ASSEMBLY_LAB/
│
├── 📓 Notes/                # Teorik notlar ve konsept açıklamaları
│   ├── cpu_registers.md
│   ├── calling_conventions.md
│   └── compiler_symbols.md   # Derleyicinin ürettiği sembollerin analizi
│
├── 💻 Lab_Projects/         # Kod örnekleri
│   ├── 01_basics/           # Temel register işlemleri
│   ├── 02_syscalls/         # Sistem çağrıları
│   └── 03_c_interop/        # C and Assembly hybrid projeler
│
├── 🧩 Challenges/           # Çözdüğüm Assembly bulmacaları ve CTF tarzı sorular
└── README.md                # Bu dosya