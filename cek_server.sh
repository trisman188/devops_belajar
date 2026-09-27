#!/bin/bash

echo "=== SISTEM MONITORING RAM DEVOPS ==="

# 1. Mengambil data sisa RAM yang tersedia (dalam satuan Megabyte)
RAM_TENTU=$(free -m | awk '/Mem:/ {print $4}')

echo "Sisa RAM saat ini: ${RAM_TENTU} MB"
echo "-------------------------------------"

# 2. Logika Peringatan (Kondisional)
# Jika sisa RAM kurang dari 1000 MB (1 GB), bunyikan alarm peringatan!
if [ "$RAM_TENTU" -lt 1000 ]; then
    echo "ALERT: Kondisi RAM Kritis! Kurang dari 1 GB!"
    echo "Tindakan: Segera periksa proses yang memakan memori besar."
else
    echo "STATUS: Kondisi RAM Aman dan Stabil."
fi

echo "====================================="
