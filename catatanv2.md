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

[ STDOUT (Standard Out) ]

Desc	: Menampilkan teks langsung didalam shell atau mengirimkan output yang dihasilkan

Example	: echo hello world > peanuts.txt

Explanation : akan membuat kata hello world dan akan dimasukkan kedalam peanuts.txt

Note 	: 
'>' = untuk mengirimkan ke dalam file tujuan
'>>' = untuk menambahkan line baru difile

Jikalau sudah punya file lalu merintahkan > maka seluruh isi file akan hilang


----------------------------------------

[ STDIN (Standard In) ]

Desc 	: stdin (standard input) adalah aliran input default yang digunakan program untuk menerima data. Secara default, input berasal dari keyboard.

Example : cat < file1.txt

Flow	: 
file.txt
   ↓
stdin (<)
   ↓
cat process
   ↓
stdout (terminal)

Explanation : Operator '<' digunakan untuk mengarahkan input ke command, cat diatas tidak menunggu input dari keyboard, tapi membaca isi dari file1.txt


========================================
# Hari 3  
# Wed Jun 17 15:41:22 WIB 2026
========================================

[ STDEER (Standard Error) ]

Desc 	: sdeer adalah aliran output mengenai error, entah karena tidak terbaca atau tidak ada file yang ditemukan

Example	: 
ls /fake/directory > peanuts.txt

Output 	:
ls: cannot access '/fake/directory': No such file or directory

Note 	:
0: stdin (standard input)
1: stdout (standard output)
2: stderr (standard error)

Example 2 : 
ls /fake/directory 2> peanuts.txt

Explanation 2 :
Mengarahkan error kepada file peanuts.txt


------------------------------------------

[ PIPE TEE ]

Desc	: Pipe berguna untuk menghubungkan 2 command sekaligus, dan tee ibarat menambahkan pipa T baru, contoh disini yaitu dengan membuat nama file disimpan disitu.

Example : Echo "Helloww" | base64

Output	: SGVsbG93dwo=

Example	: ls -la /etc | tee etc_listing.txt | grep "conf"

Explain	: Perintah ini :
1. akan menampilkan isi dari /etc
2. dan akan tee (menyimpan) di file etc_listing.txt
3. selanjutnya akan mengambil kata yang berisi "conf"

Flow	: 
                     Tee
ls -la /etc --------- T --------- grep "conf
		      |  	
		      |
                  Menyimpan output
		di file etc_listing.txt


------------------------------------------

[ ENV Environment ]

Desc 	: Environment variables adalah data (bukan file) yang disimpan di memori sesi shell, berisi informasi tentang konfigurasi sistem dan user yang sedang aktif (seperti home directory, username, path pencarian executable). Setiap proses anak (child process) yang dijalankan dari shell tersebut mewarisi salinan data ini. env adalah command untuk menampilkan SEMUA environment variable yang aktif saat itu.

Example :
1. echo $HOME       # tampilkan satu variable spesifik
2. echo $USER
3. env              # tampilkan semua variable
4. echo $PATH       # daftar direktori tempat shell mencari executable

Note 	: 
export VAR=value → set variable, tapi cuma hidup di session terminal itu saja. Tutup terminal, hilang.
Supaya permanen lintas session → tulis baris export VAR=value ke dalam ~/.bashrc (Bash) atau ~/.zshrc (Zsh). File ini cuma "resep" yang dijalankan ULANG setiap kali shell baru dibuka — bukan tempat variable disimpan.
source ~/.bashrc → memaksa shell yang SEDANG berjalan untuk membaca ulang resep itu sekarang, tanpa perlu tutup-buka terminal.
PATH itu variable krusial: kalau program nggak ketemu padahal sudah terinstall, kemungkinan besar foldernya belum masuk daftar PATH.


------------------------------------------

[ CUT ]

Desc 	:  Cut adalah command untuk mengekstrak bagian tertentu teks/baris dalam file. Baik berdasarkan posisi karakter (-c), maupun berdasarkan field/kolom (-f).

Example	: 	
1. echo 'The quick brown; fox jumps over the lazy	dog' > sample.txt
# (pastikan ada TAB literal antara "lazy" dan "dog", bukan spasi)

2. cut -c 5 sample.txt

3. cut -f 2 sample.txt

4. cut -f 1 -d ";" sample.txt

Output	: 
1. q
2. dog
3. The quick brown

Note	: 
- Delimiter adalah pemisah
- -c N → cut berdasarkan posisi karakter per baris, spasi dihitung.
- -f N  cut berdasarkan FIELD/KOLOM. Default delimiter = TAB, BUKAN spasi.
- -d "X" 

--------------------------------------------
