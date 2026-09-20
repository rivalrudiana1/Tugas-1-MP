# Tugas 1 Mobile Programming

## 1. Judul Proyek & Ringkasan
**Tugas 1 Mobile Programming (CRUD UI)**
Sebuah proyek aplikasi *mobile* dasar (prototipe) berbasis Flutter. Aplikasi ini dirancang untuk mendemonstrasikan kemampuan navigasi dasar, tata letak UI, serta alur logika untuk operasi manajemen data (seperti Tambah dan Perbarui data) guna memenuhi tugas mata kuliah Mobile Programming.

## 2. Teknologi yang Digunakan (Tech Stack)
- **Frontend / Mobile**: Flutter Framework (SDK `^3.7.2`), Dart
- **UI Design**: Material Design Icons (Cupertino Icons)

## 3. Fitur Utama & Logika Bisnis
- **Alur Sistem Sederhana (Routing)**: Menggunakan navigasi terstruktur (`MaterialApp routes`).
- **Antarmuka Multi-Halaman**:
  - `LoginPage` (`/`) - Layar login aplikasi.
  - `HomePage` (`/home`) - Layar utama (landing page) setelah berhasil login.
  - `DashboardPage` (`/dashboard`) - Tampilan analisis/ringkasan data.
  - `AddPage` (`/add`) - Antarmuka *form* untuk menambah *record* baru.
  - `UpdatePage` (`/update`) - Antarmuka *form* untuk memperbarui *record* yang sudah ada.

## 4. Struktur Direktori Proyek
- `lib/`: Merupakan folder utama yang menyimpan seluruh file *source code* Dart (`main.dart`, `login_page.dart`, `home_page.dart`, dll).
- `android/` & `ios/`: Menyimpan hasil *build* platform spesifik untuk sistem operasi Android dan iOS.
- `pubspec.yaml`: File konfigurasi *package* dan manajemen *dependencies* Flutter.

## 5. Panduan Instalasi & Cara Menjalankan Proyek
Untuk menjalankan aplikasi ini di perangkat lokal atau emulator:

1. Pastikan lingkungan [Flutter SDK](https://flutter.dev/docs/get-started/install) telah terpasang.
2. Instal *dependencies*:
   ```bash
   flutter pub get
   ```
3. Sambungkan perangkat atau luncurkan emulator, kemudian jalankan:
   ```bash
   flutter run
   ```

## 6. Endpoint API / Skema Database
Pada tahapan tugas ini, proyek hanya berfokus pada alur antarmuka pengguna (UI Flow) statis, tanpa integrasi database atau API eksternal secara langsung.
