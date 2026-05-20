# WhatsApp iOS Style UI — Flutter

Project ini merupakan replikasi dan modifikasi tampilan aplikasi WhatsApp dengan gaya antarmuka iPhone/iOS. Fokus utama project ini adalah membuat tampilan UI yang sederhana, clean, dan mudah digunakan menggunakan Flutter.

## 📱 Tampilan yang Dibuat

Project ini terdiri dari dua halaman utama:

1. **Chat List Page**  
   Halaman daftar chat dengan tampilan menyerupai WhatsApp versi iPhone. Di dalamnya terdapat judul besar, search bar, filter chat, daftar percakapan, badge pesan belum dibaca, dan bottom navigation.

2. **Chat Detail Page**  
   Halaman percakapan yang menampilkan header kontak, status online, bubble chat kanan dan kiri, serta kolom input pesan di bagian bawah.

## ✨ Fitur UI

- Tampilan bergaya WhatsApp iPhone/iOS
- Daftar chat menggunakan data dummy
- Navigasi dari halaman chat list ke halaman percakapan
- Search bar dan filter chat
- Badge jumlah pesan belum dibaca
- Bubble chat sederhana
- Bottom navigation ala iOS
- Layout responsive untuk device Android

## 🧩 Widget yang Digunakan

| Widget | Fungsi |
|---|---|
| `MaterialApp` | Struktur utama aplikasi Flutter |
| `Scaffold` | Kerangka utama halaman |
| `SafeArea` | Menjaga tampilan agar tidak tertutup status bar |
| `Column` | Menyusun widget secara vertikal |
| `Row` | Menyusun widget secara horizontal |
| `Container` | Membuat layout, search bar, filter, dan bubble chat |
| `Text` | Menampilkan teks pada aplikasi |
| `Icon` / `CupertinoIcons` | Menampilkan ikon bergaya iOS |
| `ListView.separated` | Menampilkan daftar chat dengan pemisah |
| `CircleAvatar` | Menampilkan avatar kontak |
| `InkWell` | Membuat item chat dapat ditekan |
| `Navigator` | Berpindah antar halaman |
| `TextField` | Menampilkan input pesan |

## 📸 Screenshot

![Hasil UI](screenshot/hasil_ui.png)

## 🖊️ Wireframe

![Wireframe](wireframe/wireframe_foto.jpg)

## 📂 Struktur Folder

```text
flutter_praktik26/
├── lib/
│   ├── main.dart
│   ├── pages/
│   │   ├── home_page.dart
│   │   └── chat_page.dart
│   └── widgets/
│       └── chat_tile.dart
├── screenshot/
│   └── hasil_ui.png
├── wireframe/
│   └── wireframe_foto.jpg
├── pubspec.yaml
└── README.md