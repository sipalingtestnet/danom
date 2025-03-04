# 🔥 DanomV4 Auto Installer

Skrip otomatis untuk menginstal dan menjalankan **DanomV4 Testnet Worker** dengan mudah.  
Skrip ini akan:
- Menginstal dependensi yang diperlukan
- Mengunduh dan mengekstrak **DanomV4**
- Menjalankan **install.sh** dari server
- Meminta input **wallet address** dan **API Hugging Face**
- Menyimpan konfigurasi di `wallet_config.json`
- Memulai **Danom Worker** dalam *screen session*

---

## 📥 **Cara Instalasi**
### 1️⃣ Clone Repository  
```bash
git clone https://github.com/USERNAME/danom-auto-installer.git
cd danom-auto-installer
```

### 2️⃣ Beri Izin Eksekusi  
```bash
chmod +x install_danom.sh
```

### 3️⃣ Jalankan Skrip  
```bash
./install_danom.sh
```

### 4️⃣ Masukkan Data yang Diminta  
Saat menjalankan skrip, Anda akan diminta untuk memasukkan **wallet address** dan **API Hugging Face**.

### 5️⃣ Melihat Proses Worker  
Untuk masuk ke sesi *screen* dan melihat proses yang berjalan:
```bash
screen -Rd danom
```

Jika ingin keluar dari *screen* tanpa menghentikan proses:
```bash
CTRL + A + D
```

---

## 🏆 **Claim Reward dan Swap**
✅ **Claim NOM No Fee:** [🔗 Testnet Claim](https://testnet.danom.site/)  
💱 **Swap NOM ke MON:** [🔗 Ambient Monad Swap](#) *(Link segera tersedia)*  
📖 **Dokumentasi Worker:** [🔗 Docs](https://testnet.danom.site/docs/how-it-work/howitwork)  

---

## 🛠 **Troubleshooting**
- **Jika Danom tidak berjalan:**  
  ```bash
  screen -Rd danom
  ```
  Pastikan proses masih aktif di dalam screen.

- **Jika ingin restart worker:**  
  ```bash
  pkill -f danom
  screen -dmS danom ./danom
  ```

- **Jika ada error saat instalasi, coba ulang dengan:**  
  ```bash
  rm -rf DanomV4.tar.gz Danom
  ./install_danom.sh
  ```

---

## 📜 **Lisensi**
MIT License - Silakan gunakan dan modifikasi sesuai kebutuhan.

---

🚀 **Dukung pengembangan!** Jika skrip ini bermanfaat, jangan lupa kasih ⭐ di repository ini.  
Happy mining! ⚡
