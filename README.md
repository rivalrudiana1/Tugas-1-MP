# Tugas 1 Mobile Programming

## 1. Tajuk Projek & Ringkasan
**Tugas 1 Mobile Programming (CRUD UI)**
Sebuah projek aplikasi mudah alih asas (prototaip) berasaskan Flutter. Aplikasi ini direka bentuk untuk mendemonstrasikan keupayaan navigasi asas, susun atur UI, serta aliran logik bagi operasi pengurusan data (seperti Tambah dan Kemas kini data) untuk memenuhi tugasan kursus Mobile Programming.

## 2. Teknologi yang Digunakan (Tech Stack)
- **Frontend / Mobile**: Flutter Framework (SDK `^3.7.2`), Dart
- **UI Design**: Material Design Icons (Cupertino Icons)

## 3. Ciri-Ciri Utama & Logik Perniagaan
- **Aliran Sistem Ringkas (Routing)**: Menggunakan navigasi berstruktur (`MaterialApp routes`).
- **Antaramuka Berbilang Halaman**:
  - `LoginPage` (`/`) - Skrin log masuk aplikasi.
  - `HomePage` (`/home`) - Skrin pendaratan utama selepas log masuk.
  - `DashboardPage` (`/dashboard`) - Paparan analisis/ringkasan data.
  - `AddPage` (`/add`) - Antaramuka borang untuk menambah rekod baharu.
  - `UpdatePage` (`/update`) - Antaramuka borang untuk mengemas kini rekod sedia ada.

## 4. Struktur Direktori Projek
- `lib/`: Merupakan folder utama yang menempatkan kesemua fail kod sumber Dart (`main.dart`, `login_page.dart`, `home_page.dart`, dll).
- `android/` & `ios/`: Menempatkan binaan (build) platform spesifik bagi sistem operasi Android dan iOS.
- `pubspec.yaml`: Fail konfigurasi pakej dan pengurusan kebergantungan (dependencies) Flutter.

## 5. Panduan Pemasangan & Cara Menjalankan Projek
Untuk menjalankan aplikasi ini di peranti tempatan atau *emulator*:

1. Pastikan persekitaran [Flutter SDK](https://flutter.dev/docs/get-started/install) telah terpasang.
2. Pasang kebergantungan (dependencies):
   ```bash
   flutter pub get
   ```
3. Sambungkan peranti atau lancarkan emulator, kemudian jalankan:
   ```bash
   flutter run
   ```

## 6. Endpoint API / Skema Pangkalan Data
Pada peringkat tugasan ini, ia hanya memfokuskan kepada aliran antaramuka pengguna (UI Flow) statik, tanpa integrasi pangkalan data atau API secara langsung.
