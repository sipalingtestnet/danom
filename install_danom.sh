#!/bin/bash

echo "🔄 Memperbarui paket dan menginstal dependensi..."
sudo apt update && sudo apt install -y wget curl tar screen

echo "📥 Mengunduh dan mengekstrak DanomV4..."
wget https://github.com/DanomSite/release/releases/download/v4/DanomV4.tar.gz -O DanomV4.tar.gz
tar -xvzf DanomV4.tar.gz
cd Danom || { echo "❌ Folder Danom tidak ditemukan!"; exit 1; }

echo "⚙️ Menjalankan instalasi..."
curl -fsSL 'https://testnet.danom.site/install.sh' | bash

read -p "🔹 Masukkan alamat wallet (0x...): " WALLET_ADDRESS
read -p "🔹 Masukkan API Key Hugging Face: " POOL_LIST

echo "📝 Menyimpan konfigurasi..."
echo "{\"wallet\": \"$WALLET_ADDRESS\", \"pool_list\": \"$POOL_LIST\"}" > wallet_config.json

echo "🚀 Menjalankan Danom dalam screen session..."
screen -dmS danom ./danom

echo "✅ Instalasi selesai! Gunakan perintah berikut untuk melihat proses:"
echo "   👉 screen -Rd danom"
