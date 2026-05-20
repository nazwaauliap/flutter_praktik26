# Tugas UI/UX Flutter — WhatsApp iPhone Style

## Identitas
- **Nama:** Nazwa Aulia Putri
- **NIM:** 2455201110017
- **Pilihan:** A

## Deskripsi Singkat
Project ini merupakan replikasi dan modifikasi UI aplikasi WhatsApp dengan gaya tampilan WhatsApp versi iPhone/iOS. Halaman yang dibuat terdiri dari halaman daftar chat dan satu halaman percakapan. Pada halaman daftar chat terdapat judul Chats, search bar, filter chat, daftar percakapan, jumlah pesan belum dibaca, serta bottom navigation. Pada halaman percakapan terdapat header kontak, bubble chat, dan kolom input pesan.

## Widget yang Digunakan
- MaterialApp — digunakan sebagai struktur utama aplikasi Flutter.
- Scaffold — digunakan sebagai kerangka utama setiap halaman.
- SafeArea — digunakan agar tampilan tidak tertutup status bar HP.
- Column — digunakan untuk menyusun widget secara vertikal.
- Row — digunakan untuk menyusun widget secara horizontal.
- Container — digunakan untuk membuat search bar, filter, bubble chat, dan layout tambahan.
- Text — digunakan untuk menampilkan teks seperti nama kontak, pesan, dan judul halaman.
- Icon dan CupertinoIcons — digunakan untuk menampilkan ikon bergaya iPhone/iOS.
- ListView.separated — digunakan untuk menampilkan daftar chat dengan pemisah antar item.
- CircleAvatar — digunakan untuk menampilkan avatar kontak.
- InkWell — digunakan agar item chat dapat ditekan.
- Navigator — digunakan untuk berpindah dari halaman daftar chat ke halaman percakapan.
- TextField — digunakan sebagai tampilan kolom input pesan.

## Screenshot
![Hasil UI](screenshot/hasil_ui.png)

## Wireframe
![Wireframe](wireframe/wireframe_foto.jpg)

## Kesulitan yang Ditemui
Kesulitan yang ditemui adalah mengatur tampilan agar menyerupai WhatsApp versi iPhone, terutama pada bagian layout daftar chat, search bar, bottom navigation, dan bubble chat. Selain itu, terdapat kendala saat menghubungkan project Flutter ke HP asli. Cara mengatasinya adalah dengan mengaktifkan Developer Options dan USB Debugging pada HP, lalu menjalankan aplikasi melalui Android Studio sampai device berhasil terdeteksi.