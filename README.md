# 🔬 ASSEMBLY LAB

> "Yazılımla donanımın buluştuğu yer: Assembly. Kendi makine simülasyonuma ve programlama dilime giden yolculuğun resmi laboratuvarı."

Bu depo; sıfırdan başlayarak x86-64 mimarisinin derinliklerine inmek, donanım mimarisini anlamak, C dili ile Assembly arasındaki köprüyü kurmak ve gelecekteki **özel programlama dili / makine simülasyonu / bootloader** projelerime temel oluşturmak amacıyla oluşturulmuş kişisel laboratuvarımdır.

---

## 🗺️ Yol Haritası (Kısa Özet)

Laboratuvardaki genişletilmiş akademik yol haritamız `Notes/ROADMAP_MANIFESTO.md` dosyası altında resmi anayasa olarak korunmaktadır. Ana fazlar şu şekildedir:

* **Faz 1: Temeller & Sözdizimi (Syntax):** Registers manipülasyonu, 32-bit sıfırlama kuralı ve temel komut setleri.
* **Faz 2: Derin Konseptler & Donanım Etkileşimi:** Stack (Yığın) mekanizması, Interruptlar, Sistem Çağrıları (Syscalls) ve Bootloader mantığı.
* **Faz 3: İleri Seviye Hata Ayıklama (Debug) & Analiz:** GDB TUI modunda registers takibi, `objdump` ve `readelf` ile opcode analizi.
* **Faz 4: C to Assembly & Derleyici Sırları:** `gcc -S` çıktılarının maskesini düşürme, Name Mangling, Calling Conventions ve Derleyici Optimizasyonları.

---

## 📁 Laboratuvar Klasör Yapısı

Projelerimi, oyun sandbox çalışmalarımı ve teorik dökümanlarımı düzenli tutmak için aşağıdaki modüler yapıyı kullanıyorum:

```text
ASSEMBLY_LAB/
│
├── 📓 Notes/                # Teorik notlar, akademik referanslar ve anayasa
│   ├── ROADMAP_MANIFESTO.md  # Genişletilmiş yol haritası ve makale eşleşmeleri
│   ├── cpu_registers.md
│   └── compiler_symbols.md   # Derleyicinin ürettiği sembollerin analizi
│
├── 💻 Lab_Projects/         # Geliştirdiğim saf Assembly ve Hybrid kodlar
│   ├── 01_basics/           # Temel register işlemleri (hello.asm, registers.asm)
│   ├── 02_syscalls/         # Sistem çağrıları ve kesme (interrupt) denemeleri
│   └── 03_c_interop/        # C and Assembly hybrid (Inline ve Linking) projeler
│
├── 🎮 Sandbox_Games/        # Turing Complete ve Shenzhen I/O simülasyon pratikleri
│   ├── turing_complete/     # Donanımsal ISA ve ALU simülasyon notları
│   └── shenzhen_io/         # Kısıtlı register ve I/O port eşleme pratikleri
│
├── 🧩 Challenges/           # Çözdüğüm Assembly bulmacaları ve optimizasyon görevleri
└── README.md                # Bu vitrin dökümanı