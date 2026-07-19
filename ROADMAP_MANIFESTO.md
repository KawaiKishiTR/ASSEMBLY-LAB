# 🗺️ ASSEMBLY LAB: Genişletilmiş Geliştirme ve Öğrenme Yönergesi (Manifesto)

Bu belge, **ASSEMBLY LAB** projesinin kapsamını, hedeflerini, eldeki akademik kütüphaneyi ve öğrenme metodolojisini korumak amacıyla oluşturulmuş resmi kılavuzdur. Her fazın sonunda okunacak spesifik makaleler ve kitaplar bu dökümana işlenmiştir.

---

## 🎯 Ana Vizyon ve Hedefler
1.  **Derin Bilgisayar Mimarisi İçgörüsü:** Donanımın (CPU, RAM, Registers) ham halini anlamak.
2.  **Kendi Dilini/Simülasyonunu Yazma Temeli:** İleride tasarlanacak olan özel makine simülasyonu ve programlama dili için gereken derleyici (compiler) ve sanal makine (VM) mantığını low-level seviyede kavramak.
3.  **Turing Complete Sandbox Köprüsü:** Donanımsal kapı tasarımları ile yazılımsal Assembly komut setlerini (ISA) birbiriyle konuşturmak.

---

## 🧭 Genişletilmiş Eğitim ve Uygulama Rotası

### 📦 Faz 1: Yazarak Öğrenme & Syntax Kas Hafızası (Şu An Buradayız)
*Bu fazda debug araçlarına boğulmadan, doğrudan kod yazarak, derleyerek ve işletim sistemi çıkış kodlarını okuyarak ilerlenecektir.*
* [x] Ortam Kurulumu (Fedora 44 / WSL / NASM / GCC / VS Code Ayarları)
* [ ] Lab 01: Saf Assembly ile Hello World (`sys_write` & `sys_exit` sistem çağrıları)
* [ ] Lab 02: Yazmaç Mimarisi ve Alt Bölmeler (`MOV` manipülasyonları ve 32-bit sıfırlama kuralı)
* [ ] Lab 03: İşlemciye Karar Aldırma, Döngüler ve Matematiksel Algoritmalar (`CMP`, `Jumps`, `Loops`)
* [ ] Lab 04: Bellek Adresleme Modları (RAM Veri Okuma/Yazma, İşaretçiler ve Diziler)

📖 **Bu Faz Boyunca Okunacak Ana Kaynaklar:**
* *Jeffrey Duntemann - x64 Assembly Language Step-by-Step (2023 Edisyonu)* -> İlk 8 bölüm (Register mantığı ve x64 felsefesi için).
* *Robert G. Plantz - Introduction to Computer Organization: An Under the Hood Look at Hardware and X86-64 Assembly* -> Bölüm 1 - 4 (Veri gösterimleri ve temel CPU mimarisi).

🏁 **Faz Bittiğinde Okunacak Akademik Makaleler (Köprü):**
> Bu faz bittiğinde donanım referans hızını ve bellek yerleşimini pekiştirmek için kütüphaneden şu iki döküman `kover` ile hatmedilmelidir:
> 1.  **`x64-intro.pdf` (Creighton University):** Yazmaçların ve temel komut setlerinin harika bir özetidir, yan ekranda kopya kağıdı olarak kalmalıdır.
> 2.  **`C type prunning.pdf`:** C dilindeki veri tiplerinin bellekteki ham bit yapısını ve donanımın bunları nasıl gördüğünü anlamak için kritik bir geçiştir.

---

### 📥 Faz 2: Alt Seviye Donanım & Çekirdek Konseptleri (Stack & Bootloader)
*Bu fazda fonksiyon çağrıları, stack mekanizması ve sistemin ilk açılış (boot) anındaki donanım etkileşimleri incelenecektir.*
* [ ] Stack (Yığın) Mekanizması (`PUSH`, `POP`, Activation Records)
* [ ] Fonksiyon Çağrıları ve Alt Programlar (Subroutines, `CALL`, `RET`)
* [ ] Interrupts (Kesmeler - Donanımsal ve Yazılımsal) & Linux Syscall Anatomisi
* [ ] Sandbox Lab: Turing Complete sandbox modunda kendi tasarladığın CPU üzerinde döngü ve fonksiyon çalıştırma denemeleri.

📖 **Bu Faz Boyunca Okunacak Ana Kaynaklar:**
* *Tu Do Hoang - Operating Systems: From 0 to 1* -> İlk 4 Bölüm (Sıfırdan x86 bootloader yazımı, Real Mode'dan Protected Mode'a geçiş süreçleri).

🏁 **Faz Bittiğinde Okunacak Akademik Makaleler (Köprü):**
> Fonksiyon çağrı standartlarını ve donanımsal bellek yapılarını çözmek için şu makaleler okunmalıdır:
> 1.  **`System V Application Binary Interface AMD64 Architecture Processor Supplement.pdf`:** Linux dünyasının resmi anayasasıdır. Fonksiyon parametrelerinin hangi register'lara hangi sırayla atandığını gösteren kurallar buradan incelenecektir.
> 2.  **`Simulating Content Addressable Memory.pdf` & `Sorting Binary Numbers in Hardware...pdf`:** Donanımsal bellek simülasyonlarının mantığını ve Turing Complete sandbox'ında yapabileceğin donanımsal algoritmaları kavramak için okunmalıdır.

---

### 🔬 Faz 3: İleri Seviye Hata Ayıklama (Debug) & Tersine Mühendislik
*Bu fazda kodun çalışırken bellek ve registers üzerindeki anlık izleri sürülecek, ikili (binary) dosyaların maskesi düşürülecektir.*
* [ ] GDB (GNU Debugger) TUI modunda registers ve bellek dökümü (`x/x`, `info regs`) takibi.
* [ ] `objdump -d` ve `readelf` kullanarak derlenmiş ikili dosyaların ham makine kodlarını (`opcode`) inceleme.

🏁 **Faz Bittiğinde Okunacak Akademik Makaleler (Köprü):**
> Low-level optimizasyonun ve dehanın sınırlarını görmek için şu efsanevi analiz okunmalıdır:
> 1.  **`The Mathematics behind the fast inverse square root function code.pdf`:** Quake 3 oyunundaki meşhur low-level bit hilesinin matematiksel ve donanımsal analizi. Tersine mühendislik bakış açını zirveye çıkaracaktır.

---

### 🌉 Faz 4: C - Assembly Köprüsü & Derleyici Sırları (Kendi Dilini Yazmaya Doğru)
*Bu faz, kendi programlama dilini ve derleyicini yazmadan önceki son duraktır. Yüksek seviyeli dillerin donanıma dönüşüm evreleri incelenir.*
* [ ] `gcc -S` çıktısını okuma, derleyicinin ürettiği sembolleri (`Name Mangling`, `Prologue`, `Epilogue`) analiz etme.
* [ ] Derleyici optimizasyonlarının (`-O0`, `-O2`, `-O3`) Assembly koduna dramatik ve yıkıcı etkileri.

📖 **Bu Faz Boyunca Okunacak Ana Kaynaklar:**
* *Engineering a Compiler.pdf* (Kütüphanedeki ana derleyici kitabı)
* *Understanding and writing compilers.pdf* (Uygulamalı derleme rehberi)

🏁 **BÜYÜK VİZYON KÖPRÜSÜ: Kendi Dilini ve Simülatörünü Tasarlama Zamanı!**
> ASSEMBLY LAB başarıyla tamamlandığında, kendi programlama dilini ve makine simülatörünü yazmaya başlamak için kütüphaneden sırasıyla şu akademik çalışmalar çalışılmalıdır:
> 1.  **`ebnf.pdf`:** Kendi tasarlayacağın dilin kurallarını ve gramerini matematiksel olarak nasıl tanımlayacağını öğrenmek için.
> 2.  **`A Nanopass Framework for Commercial Compiler Development.pdf`:** Modern derleyicilerin kodu küçük adımlarla (nanopass) nasıl işlediğini görmek için.
> 3.  **`Morpho VM An Indirect Threaded Stackless Virtual Machine.pdf`:** Yazacağın dili doğrudan donanıma derlemek yerine, önce kendi yazacağın bir Sanal Makinede (VM) çalıştırmak istersen kullanacağın mimari kılavuz.
> 4.  **`Dataflow Machine Architecture.pdf`:** Simülatörünü tasarlarken standart işlemcilerin dışına çıkıp alternatif mimarileri keşfetmek için.

---

## 🛠️ Laboratuvar Çalışma Kuralları
1.  **Önce Kod, Sonra Araç:** Konsept öğrenilirken önce temiz kod yazılacak, mantık oturduktan sonra makalelere ve GDB/Hex analizlerine geçilecektir.
2.  **Mimaride Derinleşme:** x86-64'ün karmaşık ve "yamalı" yapısında hayatta kalmayı öğreneceğiz ki ileride kendi simülatörümüz için RISC-V veya özel bir RISC mimarisine geçtiğimizde süreç inanılmaz kolay gelsin.