# HARI 1 - Started with Linux
# Sat Jun 13 07:04:55 WIB 2026

----------------------------------------

[ ECHO ]

Desc    : Menampilkan text/output ke terminal

Example : echo "Hello Kenzhin"

Output  : Hello Kenzhin


----------------------------------------

[ DATE ]

Desc    : Menampilkan tanggal dan waktu sekarang

Example : date

Output 	: Sat Jun 13 07:04:55 WIB 2026

----------------------------------------

[ CAL ]

Desc    : Menampilkan kalender

Example : cal

Output	: June 2026
Su Mo Tu We Th Fr Sa
    1  2  3  4  5  6
 7  8  9 10 11 12 13
14 15 16 17 18 19 20
21 22 23 24 25 26 27
28 29 30


----------------------------------------

[ EXPR ]

Desc    : Expression command untuk kalkulasi sederhana

Example :
expr 21 + 23
expr 2012 / 2
expr 123 % 3

Output 	: 44, 1006, 

----------------------------------------

[ FIGLET ]

Desc    : Mengubah text menjadi ASCII art

Example :
figlet "Kenzhin"
figlet -f slant "Kenzhin"

Notes   :
-f       = memilih font
slant    = style font miring

Output	:
 _  __              _     _
| |/ /___ _ __  ___| |__ (_)_ __
| ' // _ \ '_ \|_  / '_ \| | '_ \
| . \  __/ | | |/ /| | | | | | | |
|_|\_\___|_| |_/___|_| |_|_|_| |_|
----------------------------------------

[ CLEAR ]

Desc    : Membersihkan terminal screen

Example :
clear


----------------------------------------

[ LS ]

Desc    : Menampilkan isi directory saat ini

Example :
ls

Useful :
ls *.txt

*        = semua file dengan extension .txt

ls note*

*        = wildcard (bebas banyak karakter)

?        = single character wildcard

Extra :
ls --help


----------------------------------------

[ PWD ]

Desc    : Print Working Directory

Use     : Mengecek posisi direktori aktif saat ini

Example :
pwd


----------------------------------------

[ CD ]

Desc    : Change Directory

Use     : Masuk atau berpindah directory

Example :
cd linux_practice
cd ..
cd ~


----------------------------------------

[ MKDIR ]

Desc    : Make Directory

Use     : Membuat folder/directory baru

Example :
mkdir linux_practice


----------------------------------------

[ TOUCH ]

Desc    : Membuat file kosong tanpa edit isi

Example :
touch hello.txt

Multiple File :
touch note_{1..5}.txt

Output  :
note_1.txt sampai note_5.txt


----------------------------------------

[ > ]

Desc    : Redirect output ke dalam file

Example :
echo "Hello Linux" > hello.txt

Use     :
Mengirim output command ke file


----------------------------------------

[ CAT ]

Desc    : Concatenate

Use     : Menampilkan isi file

Example :
cat hello.txt


----------------------------------------

[ CP ]

Desc    : Copy file atau folder

Example :
cp file1.txt file2.txt


----------------------------------------

[ RM ]

Desc    : Menghapus file atau directory

Example :
rm hello.txt

Notes   :
Permanent delete (hati-hati)


----------------------------------------

[ MV ]

Desc    : Move / Rename file

Example :
mv file.txt folder/

Use     :
Memindahkan file atau rename


----------------------------------------

[ TAIL -F /DEV/NULL ]

Desc    : Menjalankan proses idle terus menerus

Use     :
Menjaga process/container tetap berjalan

Option  :
-f = follow realtime


----------------------------------------

[ MAN ]

Desc    : Manual page command Linux

Use     :
Melihat dokumentasi command

Example :
man ls
man pwd


========================================
# HARI 2
# Tue Jun 16 21:49:08 WIB 2026
========================================


[ HISTORY ]

Desc    : Menampilkan riwayat command

Example :
history


----------------------------------------

[ CLEAR ]

Desc    : Membersihkan terminal aktif

Example :
clear


----------------------------------------

[ FIND ]

Desc    : Mencari file atau directory

Example :
find .

Example :
find . -name "*.txt"


----------------------------------------

[ HELP ]

Desc 	: Untuk meminta bantuan jika lupa

Example : 
ls --help


----------------------------------------


[ WHATIS ]

Desc	: Untuk mendeskripsikan perintah tersebut buat apa

Example	: 
whatis cat

Output : 
cat (1) - Concatenate FILE(s), or standard input, to standard output With no FILE, or ...


----------------------------------------


[ ALIAS ]

Desc	: Untuk menggantikan kata yang terlalu panjang, dan bisa mengsingkatnya

Example : 
Alias ll='ls -la'

Note	: Perintah ini tidak bersifat permanen, jika ingin permanen maka tambahkan perintah ini selanjutnya 
Command : alias update='sudo apt update && sudo apt upgrade'
command : source ~/.bashrc
Command : unalias ll (Untuk remove)


----------------------------------------

[ EXIT - LOGOUT ]

Desc	: untuk keluar dari terminal - Untuk logout dari profile

Example : exit / logout


----------------------------------------
