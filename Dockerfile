# 1. Gunakan sistem operasi dasar Linux Ubuntu versi ramping (Ubuntu Alpine/Ubuntu resmi)
FROM ubuntu:latest

# 2. Atur folder kerja utama di dalam kontainer
WORKDIR /app

# 3. Salin file script pengecekan RAM dari laptop Anda ke dalam kontainer
COPY cek_server.sh .

# 4. Beri izin eksekusi agar script bisa berjalan di dalam kontainer
RUN chmod +x cek_server.sh

# 5. Perintah utama yang otomatis berjalan saat kontainer dihidupkan
CMD ["./cek_server.sh"]
