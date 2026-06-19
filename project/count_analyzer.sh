#!/bin/bash

read -p "Masukkan nama file: " filename

if [ -f "$filename" ]; then 
	echo "=== Statistik untuk $filename ==="
	echo "Jumlah Baris	: $(wc -l < "filename")"
	echo "Jumlah kata	: $(wc -w < "filename")"
	echo "Jumlah karakter 	: $(wc -c < "filename")"
else
	echo "File tidak ditemukan!"
fi
