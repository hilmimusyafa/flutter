# Bab 2 : Pengenalan Flutter & Widget Dasar

## 2.1 Apa itu Flutter?

### 2.1.1 Mengenal Flutter

Flutter adalah sebuah Software Development Kit (SDK) atau UI toolkit (perangkat pengembangan antarmuka pengguna) open-source yang dibuat oleh Google.

Tujuan utamanya adalah untuk memungkinkan developer membangun aplikasi yang indah, cepat, dan kompilasi secara native (native-compiled) untuk platform mobile (iOS dan Android), web, dan desktop dari satu basis kode (single codebase).

Artinya, cukup menulis satu set kode menggunakan bahasa pemrograman Dart, dan kode tersebut dapat dijalankan di berbagai platform.

### 2.1.2 Kapan dan Mengapa Digunakan

Flutter sangat ideal digunakan dalam skenario berikut :

- Startup dan Prototipe Cepat : Untuk startup yang perlu meluncurkan Minimum Viable Product (MVP) di Android dan iOS sekaligus dengan sumber daya terbatas.
- Konsistensi Desain : Ketika aplikasi harus memiliki tampilan (UI/UX) yang identik di semua platform.
- UI Kustom dan Kompleks : Flutter memberikan kontrol penuh atas setiap piksel di layar, memudahkan pembuatan animasi dan desain yang sangat kustom.

Alasan utama menggunakan flutter juga :

- Single Codebase : Menghemat waktu, tenaga, dan biaya. Tidak perlu mempekerjakan tim developer Android (Kotlin/Java) dan tim iOS (Swift/Objective-C) secara terpisah.
- Hot Reload (Fast Development) : Salah satu fitur terbaik Flutter. Perubahan pada kode bisa langsung terlihat di emulator atau perangkat fisik dalam hitungan kurang dari satu detik, tanpa perlu me-restart aplikasi. Ini sangat mempercepat proses development dan debugging.
- Kinerja Native : Tidak seperti framework hybrid lama yang menggunakan WebView, Flutter meng-kompilasi kode Dart langsung ke kode mesin ARM atau x86. Hasilnya adalah aplikasi yang sangat cepat dan responsif, setara dengan aplikasi native.
- UI Ekspresif : Filosofi Flutter adalah "semuanya adalah widget". Ini memudahkan developer untuk "merakit" UI seperti bermain LEGO.

Hubungan dengan Konsep Lain : 

- Dart : Flutter adalah framework, sedangkan Dart adalah bahasa pemrograman yang digunakan untuk menulis Flutter. Semua logika aplikasi, definisi UI, dan state management ditulis dalam Dart.
- Widget : Konsep inti Flutter. Semua yang terlihat di layar adalah Widget. Tombol adalah Widget, teks adalah Widget, layout (seperti baris dan kolom) adalah Widget, bahkan padding dan centering juga Widget.

### 2.1.3 Analogi Sederhana (Cara Kerja Flutter)

Bayangkan Flutter sebagai satu set balok LEGO yang sangat canggih dan mesin perakit otomatis.

- Balok LEGO (Widget) : Setiap Widget (seperti Text, Button, Column) adalah balok LEGO standar.
- Bahasa Instruksi (Dart) : Kode Dart adalah buku instruksi yang memberi tahu mesin cara merakit balok-balok tersebut.
- Blueprint (Widget Tree) : Susunan kode Widget (misal, Column berisi Text dan Button) adalah blueprint atau "pohon widget".
- Mesin Perakit (Flutter Engine) : Flutter engine (ditulis dalam C++) membaca blueprint ini dan "melukis" balok-balok tersebut langsung ke layar (disebut rendering).
- Keajaiban (Single Codebase) : Blueprint yang sama ini dapat diberikan ke "Pabrik Android" dan "Pabrik iOS", dan keduanya akan menghasilkan rakitan (aplikasi) yang identik dan berfungsi penuh.

### 2.1.4 Sintaks dan Struktur Dasar Aplikasi

Struktur paling dasar dari sebuah aplikasi Flutter selalu melibatkan fungsi `main()` dan `runApp()`.

#### 2.1.4.1 Fungsi `main()` dan `runApp()`

Setiap aplikasi Dart (termasuk Flutter) dimulai dengan fungsi main() sebagai titik masuk (entry point).
- `void main(){}` : Fungsi utama tempat eksekusi program dimulai.
- `runApp(Widget app)` : Fungsi inti Flutter yang mengambil Widget utama (root widget) dan menampilkannya di layar. Seluruh aplikasi akan menjadi "anak" dari widget ini.

Template dasar :

```dart
// 1. Import the material library (provides standard UI widgets)
import 'package:flutter/material.dart';

// 2. The entry point of the application
void main() {
  // 3. runApp inflates the given widget and attaches it to the screen
  runApp(const MyApp()); // MyApp is the 'root widget'
}
```

#### 2.1.4.2 Konsep `Widget` (Stateless vs. Stateful)

Aplikasi Flutter dibangun dari `Widget`. Ada dua tipe dasar :

1. `StatelessWidget`:

Widget yang propertinya tidak bisa berubah setelah dibuat (immutable). Digunakan untuk tampilan statis yang tidak bergantung pada perubahan data internal. Contoh: Ikon, teks label, tombol yang tampilannya selalu sama.

2. `StatefulWidget` :

Widget yang bisa mengubah tampilannya selama runtime berdasarkan data internal (disebut State).Digunakan ketika UI perlu diperbarui saat pengguna berinteraksi (misal, mengetik di form) atau saat data berubah. Contoh: Checkbox, slider, halaman yang menampilkan data dari API.

#### 2.1.4.3 Metode `build()`

Setiap `StatelessWidget` dan `StatefulWidget` wajib memiliki metode `build()`. Tujuannya untuk metode build bertugas "mendeskripsikan" atau "menggambar" UI widget tersebut. Sehingga parameternya menerima `BuildContext context`, yang berisi informasi tentang lokasi widget di dalam widget tree.dan Return Valuenya berupa metode build selalu mengembalikan sebuah Widget.

```dart
// A custom widget named MyApp
class MyApp extends StatelessWidget {
  // Constructor (const is for performance optimization)
  const MyApp({super.key});

  // The build method describes the widget's UI
  @override
  Widget build(BuildContext context) {
    // Returns a widget
    // MaterialApp is a common root widget for Material Design apps
    return MaterialApp(
      home: Text('Hello, Flutter!'), // The UI to display
    );
  }
}
```

#### 2.1.4.5 Best Practices

- Selalu gunakan `const` pada constructor widget jika widget tersebut immutable. Ini membantu Flutter mengoptimalkan performa dengan tidak membangun ulang widget yang tidak perlu.
- Jaga agar file `main.dart` tetap ramping. Idealnya, `main()` hanya memanggil `runApp()` dengan root widget (misal `MyApp`). Logika aplikasi lainnya dipisah ke file lain.
- Pisahkan widget yang kompleks menjadi beberapa widget yang lebih kecil dan reusable.

### 2.1.5 Contoh Kode Implementasi

Berikut adalah dua contoh kode lengkap yang bisa langsung dijalankan (simpan sebagai `main.dart`)

#### 2.1.5.1 Contoh 1 : Aplikasi "Hello World" Minimal

2.1.5.1-1-MinimalHelloWorldFlutter.dart

```dart
// main.dart
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // MaterialApp provides the basic app structure and theme
    return MaterialApp(
      // Hides the debug banner
      debugShowCheckedModeBanner: false,
      
      // 'home' is the main screen of the app
      home: Center(
        // Center is a widget that centers its child
        child: Text(
          'Hello, Startup!',
          // style the text
          style: TextStyle(fontSize: 24, color: Colors.blue),
        ),
      ),
    );
  }
}
```

Kode bisa di akses di [2.1.5.1-1-MinimalHelloWorldFlutter.dart](../../../code/2/2.1.5.1/2.1.5.1-1-MinimalHelloWorldFlutter.dart)

2.1.5.2 Contoh 2 : Struktur Aplikasi Startup (Halaman Login Fiktif)

Tujuan : Membuat struktur aplikasi yang lebih realistis menggunakan `MaterialApp` dan `Scaffold`. `Scaffold` adalah fondasi untuk halaman aplikasi (menyediakan App Bar, Body, dll). Ini adalah fondasi yang akan sering digunakan untuk setiap halaman di aplikasi startup.

2.1.5.2-1-SimpleExampleApplication.dart

```dart
// main.dart
import 'package:flutter/material.dart';

void main() {
  runApp(const MyStartupApp());
}

// This is the root widget of the application.
class MyStartupApp extends StatelessWidget {
  const MyStartupApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Startup',
      debugShowCheckedModeBanner: false,
      // Define the overall theme for the app
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        useMaterial3: true,
      ),
      // The first screen to show
      home: const LoginPage(),
    );
  }
}

// This widget represents the Login Page screen
class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Scaffold provides the standard screen layout
    return Scaffold(
      // The top bar of the screen
      appBar: AppBar(
        title: const Text('Welcome to Startup'),
        backgroundColor: Colors.indigo[600],
        titleTextStyle: const TextStyle(color: Colors.white, fontSize: 20),
      ),
      // The main content of the screen
      body: Center(
        child: Column(
          // Center the content vertically
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // A placeholder text
            const Text(
              'Login Page Placeholder',
              style: TextStyle(fontSize: 22),
            ),
            
            // Add some spacing
            const SizedBox(height: 20),
            
            // A placeholder button
            ElevatedButton(
              onPressed: () {
                // Handle login tap later
              },
              child: const Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}
```

Kode bisa diakses di [2.1.5.2-1-SimpleExampleApplication.dart](../../../code/2/2.1.5.2/2.1.5.2-1-SimpleExampleApplication.dart)

## 2.2 Setup Flutter Environment

### 2.2.1 Definisi dan Tujuan

Flutter Environment (Lingkungan Flutter) adalah kumpulan semua perangkat lunak, Software Development Kits (SDK), dan konfigurasi yang harus diinstal di komputer developer.

Tujuannya adalah untuk menciptakan "bengkel kerja" yang lengkap agar komputer siap dan mampu :

- Menulis kode Flutter (menggunakan bahasa Dart).
- Menjalankan dan meng-debug kode tersebut.
- Meng-kompilasi (membangun) kode menjadi aplikasi final untuk Android (APK/AAB) dan iOS (IPA).
- Tanpa lingkungan ini, kode Flutter hanyalah teks biasa yang tidak dapat dieksekusi atau diubah menjadi aplikasi.

Ini adalah langkah pertama dan paling fundamental sebelum menulis satu baris kode aplikasi. Lantas, mengapa setup ini diperlukan :

- Flutter SDK : Membutuhkan "otak" Flutter itu sendiri (SDK) yang berisi engine dan library widget.
- Platform Spesifik : Flutter cross-platform, tetapi untuk membangun aplikasi Android, diperlukan tools Android (Android SDK). Untuk membangun aplikasi iOS, diperlukan tools Apple (Xcode). Flutter SDK "berbicara" dengan tools spesifik platform ini.
- Testing : Membutuhkan cara untuk melihat hasil aplikasi, baik melalui Emulator (perangkat virtual) atau Device (HP fisik).

Hubungan dengan Konsep Lain : 

- Hubungan dengan Flutter : Jika Flutter adalah desain mobil (konsepnya), maka Environment Setup adalah proses membangun pabrik (alat, mesin, dan jalur perakitan) untuk memproduksi mobil tersebut.
- Hubungan dengan Kode (Widget) : Environment (khususnya IDE seperti VS Code) adalah "buku catatan" atau "kanvas" tempat blueprint (kode widget) akan ditulis. Tanpa environment, blueprint tersebut tidak bisa diubah menjadi produk fisik.

Analogi Sederhananya, dapur Startup Kopi, mempersiapkan Flutter Environment ibarat mempersiapkan coffee shop baru dari nol :

- Flutter SDK : Ini adalah resep rahasia dan biji kopi premium. Bahan utamanya.
- IDE (VS Code / Android Studio) : Ini adalah meja kasir dan area kerja barista. Tempat meracik dan mencatat pesanan.
- Android SDK / Xcode (Platform Tools) : Ini adalah mesin espresso (untuk Android) dan grinder (untuk iOS). Alat berat yang spesifik untuk membuat produk akhir.
- Emulator / Device Fisik: Ini adalah cangkir untuk tester (mencicipi kopi sebelum dijual) atau pelanggan pertama.
- `flutter doctor` (Perintah): Ini adalah inspektur kesehatan (BPOM) yang datang untuk mengecek apakah semua alat ada, bersih, dan berfungsi sebelum coffee shop boleh buka.

### 2.2.2 Struktur Perintah dan Komponen (Bukan Sintaks Kode)

Topik ini berfokus pada instalasi tools, bukan penulisan kode Dart. Oleh karena itu, bagian ini menjelaskan komponen dan perintah command-line yang digunakan selama setup.

Instalasi yang sukses membutuhkan 4 komponen inti:

- Flutter SDK : Core package dari Flutter. Diunduh sebagai file Zip dari situs resmi Flutter.
- IDE (Integrated Development Environment) :

  - Visual Studio Code (VS Code) : Pilihan populer, ringan, dan cepat.
  - Android Studio : Pilihan yang lebih berat, namun paling lengkap untuk pengembangan Android (karena sudah termasuk Android SDK dan AVD Manager).

- Plugin IDE :

  - Plugin `Flutter` dan `Dart` untuk VS Code.
  - Plugin `Flutter` dan `Dart` untuk Android Studio.
  
  Plugin ini memberikan fitur seperti syntax highlighting, code completion, dan hot reload.

- Platform SDK & Tools :

  - Untuk Android : Android Studio (yang di dalamnya ada Android SDK, Android SDK Command-line Tools, dan AVD Manager untuk emulator).
  - Untuk iOS (hanya di macOS) : Xcode (diinstal dari App Store).

Perintah CLI (Command Line Interface) Kunci

Ini adalah "sintaks" utama yang digunakan di Terminal atau Command Prompt untuk mengelola Flutter SDK.

- `flutter doctor` : Perintah diagnostik untuk memeriksa apakah semua komponen sudah terinstal dan terkonfigurasi dengan benar.
- `flutter upgrade` : Untuk memperbarui Flutter SDK ke versi stabil terbaru.
- `flutter channel` : Untuk melihat atau mengganti channel rilis (misal: stable, beta).
- `flutter doctor --android-licenses` : Perintah khusus untuk menyetujui lisensi Android SDK setelah instalasi.

Konfigurasi Wajib : `PATH` Environment Variable

- Definisi : `PATH` adalah variabel sistem operasi yang memberi tahu command prompt di mana harus mencari file yang dapat dieksekusi (seperti `flutter.bat` atau `dart.exe`).
- Tujuan : Agar perintah flutter dapat dijalankan dari direktori manapun di dalam Terminal/CMD.
- Implementasi : Setelah mengekstrak Flutter SDK (misal ke `C:\flutter`), lokasi sub-folder `C:\flutter\bin` harus ditambahkan ke variabel PATH sistem.

### 2.2.3 Contoh Implementasi : Diagnostik `flutter doctor`
Tidak ada kode aplikasi untuk environment setup. Implementasi praktisnya adalah menjalankan perintah di terminal untuk memvalidasi setup.

#### 2.2.3.1 Kasus 1 : Output flutter doctor (Instalasi Belum Selesai)

Ini adalah case study umum saat setup startup aplikasi. Setelah menginstal Flutter SDK dan VS Code, flutter doctor dijalankan.

Perintah (Terminal/CMD) :

```bash
$ flutter doctor
```

Contoh output (Gagal/Warning) :

```bash
# This command checks the environment and reports status.
Doctor summary (to see all details, run flutter doctor -v):
[✓] Flutter (Channel stable, 3.19.0, on Microsoft Windows [Version 10.0.19045.4170])
[!] Android toolchain - develop for Android devices (Android SDK version 34.0.0)
    ! Some Android licenses not accepted. To resolve this, run:
      flutter doctor --android-licenses
[!] Visual Studio - develop for Windows (Visual Studio not installed)
    ! VS Code is installed, but the Flutter plugin is not.
      Install the 'Flutter' extension from the VS Code Marketplace.
[✓] VS Code (version 1.87.2)
[!] Connected device (0 available)
    ! No devices available

! Doctor found issues in 3 categories.
```

Analisis dan Troubleshooting :

- `[!] Android toolchain` : Ada masalah lisensi. Solusinya sudah diberikan: jalankan `flutter doctor --android-licenses`.
- `[!] Visual Studio` : Ini bukan VS Code. Ini untuk desktop development. Boleh diabaikan jika targetnya mobile.
- `[!] VS Code` : Plugin Flutter belum terinstal di VS Code. Solusi: Buka VS Code, pergi ke Extensions, cari 'Flutter', dan install.
- `[!] Connected device` : Tidak ada emulator yang berjalan atau HP fisik yang terhubung. Solusi: Buka Android Studio -> AVD Manager -> Jalankan emulator.

#### 2.2.3.2 Kasus 2 : Output flutter doctor (Sukses)

Setelah semua troubleshooting dari Kasus 1 diperbaiki (menyetujui lisensi, menginstal plugin, dan menjalankan emulator).

Perintah (Terminal/CMD) :

```bash
$ flutter doctor
```

Contoh Output (Sukses) :

```bash
# Re-running the check after fixing issues.
Doctor summary (to see all details, run flutter doctor -v):
[✓] Flutter (Channel stable, 3.19.0, on Microsoft Windows [Version 10.0.19045.4170])
[✓] Android toolchain - develop for Android devices (Android SDK version 34.0.0)
[✓] Visual Studio - develop for Windows (Visual Studio not installed)
    • (Skipped, not developing for Windows desktop)
[✓] VS Code (version 1.87.2)
    • Flutter extension is installed.
[✓] Connected device (1 available)
    • sdk gphone64 x86 64 (mobile) • emulator-5554 • android-x86_64

• No issues found!
```

Analisis (Lingkungan Siap) :

- Semua checklist `[✓]` (centang hijau).
- Connected device menunjukkan emulator (`sdk gphone64`) sudah berjalan dan terdeteksi.
- Lingkungan ini sekarang siap untuk menjalankan aplikasi pertama (`flutter run`).

## 2.3 Arsitektur Flutter

## 2.4 Widget Stateless & Stateful

## 2.5 Layout Widgets

## 2.6 Common Widgets

## 2.7 Scrollable Widgets

