# Bab 1 : Fondasi Pemrograman Dart

## 1.1 Pengenalan Dart & Setup Environment

### 1.1.1 Apa itu Dart?

Dart adalah bahasa pemrograman yang dibuat oleh Google. Awalnya dirancang untuk pengembangan web, namun kini tujuan utamanya adalah sebagai bahasa untuk **Flutter**, sebuah _framework_ (kerangka kerja) untuk membangun aplikasi _multi-platform_ (Mobile, Web, Desktop) dari satu basis kode (_codebase_).

Dengan menggunakan Dart (dengan Flutter) ketika ingin membuat aplikasi untuk Android dan iOS secara bersamaan tanpa harus menulis kode dua kali (misalnya, sekali di Java/Kotlin untuk Android dan sekali di Swift untuk iOS). Bagi startup, ini sangat menguntungkan karena menghemat waktu, biaya, dan sumber daya tim _developer_.

Dart adalah **bahasa**-nya, Flutter adalah **alat/framework**-nya. Harus belajar sintaks Dart terlebih dahulu sebelum bisa "memerintahkan" Flutter untuk menggambar antarmuka (UI) atau mengambil data dari internet.

Bayangkan Flutter adalah sebuah pabrik perakitan mobil (aplikasi). Dart adalah bahasa universal yang digunakan untuk menulis semua instruksi di pabrik itu. Baik ingin membuat mobil sport (aplikasi iOS) atau truk (aplikasi Android), cukup menulis instruksinya sekali dalam bahasa Dart, dan pabrik Flutter akan merakit mobil yang sesuai secara otomatis.

### 1.1.2 Perbedaan Dart dengan Bahasa Lain 

Dart dirancang khusus untuk membangun antarmuka pengguna (UI). Fitur utamanya adalah kemampuannya untuk dikompilasi secara **JIT (Just-In-Time)** dan **AOT (Ahead-Of-Time)**.

- **Kompilasi JIT (saat _development_) :** Memungkinkan fitur _Hot Reload_ di Flutter. Saat  menyimpan kode, perubahan langsung terlihat di aplikasi dalam hitungan detik tanpa perlu me-restart, mempercepat proses _debugging_ dan desain UI.
- **Kompilasi AOT (saat _rilis_) :** Kode Dart dikompilasi langsung menjadi kode mesin asli (ARM/x86). Hasilnya adalah aplikasi yang berjalan sangat cepat dan _native_, tidak seperti _framework hybrid_ lama yang menggunakan _webview_.

Sebagai Contoh, Berikut perbandingannya dengan bahsa lain :

|Aspek|**Dart**|**Java**|**Kotlin**|**Swift**|
|---|---|---|---|---|
|**Platform utama**|Flutter (Android, iOS, Web, Desktop)|Android (Java/Kotlin)|Android (resmi dari Google)|iOS/macOS (Apple)|
|**Paradigma**|Object-Oriented, Functional|Object-Oriented|Object-Oriented + Functional|Object-Oriented + Protocol-Oriented|
|**Tipe data**|Static typing (dengan inference)|Static typing|Static typing (type inference)|Static typing (type inference)|
|**Null safety**|Ya (sejak Dart 2.12)|Tidak (hingga Java 8)|Ya (bawaan)|Ya (optional binding)|
|**Memory management**|Automatic (Garbage Collector)|Automatic (GC)|Automatic (GC)|Automatic (ARC)|
|**Async/Await support**|Native (async/await)|Sejak Java 8 (CompletableFuture)|Native (coroutines)|Native (async/await)|
|**Compilation**|AOT & JIT (ke native code via Flutter)|JVM Bytecode|JVM Bytecode|Native (LLVM)|
|**Syntax style**|Mirip C-style, ringkas|Verbose, klasik|Modern & ringkas|Modern & ketat|
|**Hot Reload**|Ya (fitur utama Flutter)|Tidak|Tidak (tapi Gradle incremental)|Tidak (Xcode restart penuh)|
|**Penggunaan utama**|Flutter app multi-platform|Android native|Android native (modern)|iOS native|
|**Ekosistem IDE utama**|VS Code, Android Studio|Android Studio, IntelliJ|Android Studio|Xcode|
|**Keunggulan utama**|Satu codebase untuk semua platform|Stabil dan mature|Ringkas, interoperable dengan Java|Optimal untuk ekosistem Apple|
|**Kelemahan utama**|Terbatas di Flutter|Verbose, lambat di dev|Masih tergantung JVM|Hanya untuk Apple ecosystem|
### 1.1.3 Contoh Dasar Kode Dart dan Perbandingan Kode Lain

1. Dart

1.1.3-1-DartExample.dart

```dart
void main() {
  print('Hello from Dart!');
  
  var user = User('Hilmi');
  user.greet();
}

class User {
  String name;
  User(this.name);

  void greet() {
    print('Hello, $name!');
  }
}
```

Akses kode di [1.1.3-1-DartExample.dart](../../../code/1/1.1.3/1.1.3-1-DartExample.dart)

2. Java

1.1.3-2-JavaExample.java

```java
public class Main {
    public static void main(String[] args) {
        System.out.println("Hello from Java!");
        User user = new User("Hilmi");
        user.greet();
    }
}

class User {
    private String name;

    public User(String name) {
        this.name = name;
    }

    public void greet() {
        System.out.println("Hello, " + name + "!");
    }
}
```

Akses kode di [1.1.3-2-JavaExample.java](../../../code/1/1.1.3/1.1.3-2-JavaExample.java)

3. Kotlin

1.1.3-3-KotlinExample.kt

```kotlin
fun main() {
    println("Hello from Kotlin!")
    val user = User("Hilmi")
    user.greet()
}

class User(private val name : String) {
    fun greet() {
        println("Hello, $name!")
    }
}
```

Akses kode di [1.1.3-3-KotlinExample.kt](../../../code/1/1.1.3/1.1.3-3-KotlinExample.kt)

4. Swift

1.1.3-4-SwiftExample.swift

```swift
import Foundation

print("Hello from Swift!")

class User {
    var name : String

    init(_ name : String) {
        self.name = name
    }

    func greet() {
        print("Hello, \(name)!")
    }
}

let user = User("Hilmi")
user.greet()
```

Akses kode di [1.1.3-4-SwiftExample.swift](../../../code/1/1.1.3/1.1.3-4-SwiftExample.swift)

### 1.1.4 Instalasi Dart SDK & DartPad

1. Penjelasan Konsep

Untuk mulai menulis kode Dart, memerlukan _environment_ (lingkungan). disini dua pilihan utama :

1. **DartPad (Rekomendasi Pemula) :** Sebuah editor kode online gratis dari Google. tidak perlu menginstal apa pun. Ini adalah cara terbaik untuk mencoba contoh-contoh di bab-bab awal.
2. **Dart SDK (Untuk Proyek Serius) :** Ini adalah _Software Development Kit_ yang diinstal di komputer. Ini berisi _compiler_ dan semua alat yang diperlukan untuk menjalankan Dart dari terminal. Nanti, saat menginstal Flutter, Dart SDK sudah termasuk di dalamnya.

3. Sintaks dan Struktur (Alat)

- Opsi 1 : DartPad

    - **Tujuan :** Eksperimen cepat, belajar, dan menjalankan contoh kode.
    - **Cara Penggunaan :** Buka `dartpad.dev` di browser.
    - **Best Practice :** Gunakan ini untuk semua materi di Bab 1. bisa langsung _copy-paste_ contoh kode dan menekan tombol "Run".
        
- Opsi 2 : Dart SDK (Lokal)

    - **Tujuan :** Menjalankan file Dart secara lokal (misal : `dart run my_app.dart`).
    - **Instalasi :** Prosesnya berbeda-beda tiap OS (bisa via Chocolatey di Windows, Homebrew di macOS, atau `apt` di Linux).
    - **Catatan :** Untuk saat ini, **fokus saja pada DartPad**. disini akan menginstal SDK lengkap nanti saat masuk ke bagian instalasi Flutter.

### 1.1.5 Struktur Program Dart

1. Penjelasan Konsep

Setiap program Dart yang dapat dieksekusi (bukan sebagai _library_) harus memiliki _entry point_ atau "pintu masuk". Dart, seperti banyak bahasa C-style lainnya, menggunakan fungsi bernama `main()` sebagai _entry point_-nya.

Ketika menjalankan program Dart, sistem akan mencari fungsi `main()` dan mulai mengeksekusi kode apa pun yang ada di dalamnya, baris demi baris, dari atas ke bawah.

2. Sintaks dan Struktur

```dart
void main() {
  // Your code goes here.
  // This is the starting point of the app.
}
```

- `void` : Ini adalah _return type_ (tipe data keluaran) dari fungsi. `void` berarti fungsi `main()` tidak mengembalikan nilai apa pun saat selesai dieksekusi.
- `main()` : Nama fungsi yang wajib. Tanda `()` menunjukkan bahwa ini adalah sebuah fungsi. Nanti, tanda kurung ini bisa berisi _parameter_ (input), tapi untuk `main` biasanya kosong.
- `{ ... }` : _Body_ (isi) dari fungsi. Semua kode yang ingin jalankan diletakkan di dalam kurung kurawal ini.
- `;` (Titik Koma) : Setiap _statement_ (pernyataan atau perintah) di dalam Dart harus diakhiri dengan titik koma. Ini memberi tahu _compiler_ di mana satu perintah berakhir dan perintah berikutnya dimulai.

### 1.1.6 Hello World Pertama

1. Penjelasan Konsep

"Hello, World!" adalah program tradisi-untuk memverifikasi bahwa _environment_ berfungsi dan untuk memahami sintaks paling dasar : cara mencetak (menampilkan) sesuatu ke layar (konsol). Di Dart, gunakan fungsi bawaan bernama `print()` untuk melakukan ini.

2. Sintaks dan Struktur (Fungsi `print()`)

- **Template :** `print(Object object);`
- **Parameter :**
    - `object` : Fungsi `print()` menerima satu parameter yang bisa berupa tipe data apa saja (String, Angka, dll.). Fungsi ini akan secara otomatis mengubah objek tersebut menjadi teks (String) dan menampilkannya.
- **Return Value :** Tidak ada (atau lebih tepatnya, `void`). Tujuannya adalah melakukan "aksi" (mencetak ke konsol), bukan mengembalikan nilai.
- **Best Practice :**
    - Gunakan tanda kutip tunggal (`'...'`) untuk String. (Ini adalah panduan gaya resmi Dart/Flutter).
    - Gunakan tanda kutip ganda (`"..."`) jika String berisi tanda kutip tunggal (misal : `"It's a beautiful day"`).

2. Contoh Kode Implementasi

- **Contoh 1 : "Hello, World!" Paling Sederhana** (Coba bisa langsung _copy-paste_ kode ini ke DartPad dan tekan "Run")

1.1.6-1-JustHelloWorld.dart

```dart
// main() is the entry point of the program.
void main() {
  // print() is a built-in function to output text to the console.
  // We pass a String (text) literal using single quotes.
  print('Hello, World!');
}
```

Dan akan berouput :

```bash
Hello, World!
```

Bisa di cek di code [1.1.6-1-JustHelloWorld.dart](../../../code/1/1.1.6/1.1.6-1-JustHelloWorld.dart)

- **Contoh 2 : "Hello, World!" dengan Variabel (Konteks Startup)** Ini menunjukkan cara menyimpan teks dalam "wadah" (variabel) sebelum mencetaknya.

```dart
void main() {
  // 1. Declare a variable 'startupName' and assign it a String value.
  // 'String' is the data type. 'startupName' is the variable name.
  String startupName = 'AplikasiTugasKuliah.id';

  // 2. Print the value of the variable.
  print(startupName);

  // 3. Use 'string interpolation' ($) to combine text and variables.
  // This is the preferred way to build strings in Dart.
  print('Welcome to $startupName!');

  // 4. This is the older/less clean way (avoid this if possible) :
  // print('Welcome to ' + startupName + '!');
}
```

Output bisa mengeluarkan : 

```bash
AplikasiTugasKuliah.id
Welcome to AplikasiTugasKuliah.id!
```

Bisa di cek [1.1.6-2-MoreHelloWorld.dart](../../../code/1/1.1.6/1.1.6-2-MoreHelloWorld.dart)

## 1.2 Fundamental Dart

### 1.2.1 : Variabel (var, final, const)

Variabel adalah "kotak" atau "wadah" di dalam memori komputer yang diberi nama untuk menyimpan sebuah nilai. Di Dart, ada tiga kata kunci utama untuk mendeklarasikan variabel :

- `var`: Variabel yang nilainya bisa berubah (mutable) dan tipenya ditentukan secara otomatis saat pertama kali diisi (type inference). Gunakan `var` (atau tipe data eksplisit) untuk nilai yang akan berubah seiring waktu. Contoh: jumlah barang di keranjang, total skor.
- `final`: Variabel yang nilainya hanya bisa diisi **satu kali** (immutable setelah di-set). Tipenya bisa eksplisit atau _inferred_. Gunakan `final` untuk nilai yang setelah didapat tidak akan berubah lagi. Contoh: nama pengguna setelah login, data yang diambil dari API.
- `const`: Seperti `final`, tapi nilainya harus sudah diketahui saat kode ditulis (compile-time constant). Nilainya tidak bisa diubah sama sekali. Gunakan `const` untuk nilai-nilai yang benar-benar tetap dan tidak akan pernah berubah. Contoh: URL API, kunci konfigurasi, nilai Pi (3.14).

Variabel adalah fondasi dari semua bahasa. Di `main()` (1.1.4), semua logika yang ditulis akan beroperasi menggunakan variabel untuk menyimpan, membaca, dan memanipulasi data. Analogi Sederhana :

- `var`: Papan tulis. Isinya bisa ditulis, dihapus, dan diganti kapan saja.
- `final`: Plakat nama di meja. Sekali namanya diukir (di-set), plakat itu tidak akan diganti, meskipun plakatnya baru dibuat saat orang itu masuk (runtime).
- `const`: Ukiran di batu prasasti. Isinya sudah pasti dan diukir bahkan sebelum ada yang membacanya (compile-time). Contoh variabel pada Dart :

1.2.1-1-VariableExample.dart

```dart
// Inferred data type
var myVariable = 'Hello';
final myFinalVariable = 'Hello';
const myConstVariable = 'Hello';

// Explicit data types
String myString = 'Hello';
final int myNumber = 10;

// Print for test
print(myVariable);
print(myFinalVariable);
print(myConstVariable);
print(myString);
print(myNumber);
```

Output kode di atas :

```
Hello
Hello
Hello
Hello
10
```

Kode bisa di jalankan [1.2.1-1-VariableExample.dart](../../../code/1/1.2.1/1.2.1-1-VariableExample.dart)

Best Practices Penggunaan :

1. **Utamakan `const`:** Jika nilainya bisa `const`, gunakan `const`.
2. **Jika tidak, utamakan `final`:** Sebagian besar variabel di aplikasi Flutter (seperti di _widget_) akan berupa `final`.
3. **Gunakan `var` (atau tipe eksplisit)** hanya jika benar-benar perlu mengubah nilainya.-

Contoh Kode Implementasi :

1.2.1-2-CaseonVariable.dart

```dart
void main() {
  // Use 'const' for values known at compile time.
  // Example : API key for a startup's service.
  const String apiKey = 'xyz-startup-key-12345';
  print('API Key: $apiKey');

  // Use 'final' for values set once at runtime.
  // Example : User logs in, their ID is fetched and stored.
  final String loggedInUserId = fetchUserId(); // Simulating a fetch
  print('User ID: $loggedInUserId');

  // 'final' variables cannot be reassigned.
  // loggedInUserId = 'another-id'; // This will cause an error.

  // Use 'var' (or explicit type) for mutable state.
  // Example : A user's shopping cart total.
  double cartTotal = 0.0;
  print('Initial Cart Total: $cartTotal');
  
  cartTotal = cartTotal + 50.99; // Value changes
  print('Updated Cart Total: $cartTotal');
}

// A helper function to simulate fetching data at runtime
String fetchUserId() {
  // In a real app, this would be an API call.
  return 'user-caelus-001';
}
```

Maka akan keluar output : 

```
API Key: xyz-startup-key-12345
User ID: user-caelus-001
Initial Cart Total: 0.0
Updated Cart Total: 50.99
```

Namun jika uncomment pada bagian `loggedInUserId = 'another-id';` :

```dart
// 'final' variables cannot be reassigned.
loggedInUserId = 'another-id'; // This will cause an error.
```

Dia akan mendapatkan error, karena `final` tidak bisa di ubah, hanya pertama kali yang bisa di ubah (atau ketika `final` itu sudah terisi pertama kali) : 

```
Development/flutter/code/1/1.2.1/tempCodeRunnerFile.dart:1:1: Error: Variables must be declared using the keywords 'const', 'final', 'var' or a type name.
Try adding the name of the type of the variable or the keyword 'var'.
loggedInUserId = 'another-id';
^^^^^^^^^^^^^^
```

Untuk mencoba kode bisa gunakan [1.2.1-2-CaseonVariable.dart](../../../code/1/1.2.1/1.2.1-2-CaseonVariable.dart)

### 1.2.2 : Tipe Data

#### 1.2.2.1 Tipe Data Primitif (int, double, bool, String)

Tipe data adalah klasifikasi nilai yang bisa disimpan oleh variabel. Tipe data primitif adalah tipe paling dasar :

- `int` : Bilangan bulat (contoh: 1, 10, -5, 0). Untuk menghitung jumlah barang, umur, ID, _counter_.
- `double` : Bilangan desimal (contoh: 3.14, 0.5, -20.99). Untuk nilai moneter (harga), rating bintang, persentase.
- `bool` : _Boolean_, hanya bernilai `true` (benar) atau `false` (salah). Untuk menyimpan status (sudah login? `isLoggedIn`), (sedang memuat? `isLoading`), (fitur aktif? `isFeatureEnabled`).
- `String` : Teks, kumpulan karakter yang diapit tanda kutip (`'...'` atau `"..."`). Untuk menyimpan nama, deskripsi produk, pesan eror, URL.

Dasar penerapan kode : 

```dart
int userAge = 25;
double productPrice = 149.99;
bool isUserActive = true;
String userName = 'Himeko';

// Dart juga punya 'num' yang bisa jadi 'int' atau 'double'
num temperature = 26.5; 
temperature = 27; // Ini valid
```

Best Practices Penggunaan :

- Selalu gunakan tipe yang spesifik (`int` atau `double`) daripada `num` jika sudah tahu jenis angkanya.
- Gunakan kutip tunggal (`'...'`) untuk `String` sebagai _style guide_ standar di Flutter.

Contoh kode Implementasi :

1.2.2.1-1-PrimitiveDataType.dart

```dart
void main() {
  // Case Study: Storing basic startup user profile
  
  // String: for names, descriptions, etc.
  String userName = 'march7th';
  String userFullName = 'March7th';

  // int: for counts, IDs, age.
  int userAge = 21;
  int userFollowers = 520;

  // double: for ratings, prices, etc.
  double userRating = 4.7;

  // bool: for status flags.
  bool isPremiumUser = false;

  print('--- User Profile ---');
  print('Username: $userName');
  print('Full Name: $userFullName');
  print('Age: $userAge');
  print('Followers: $userFollowers');
  print('Rating: $userRating');
  print('Premium Status: $isPremiumUser');
}
```

Maka output kodenya :

```
--- User Profile ---
Username: march7th
Full Name: March7th
Age: 21
Followers: 520
Rating: 4.7
Premium Status: false
```

Untuk mencoba kodenya [1.2.2.1-1-PrimitiveDataType.dart](../../../code/1/1.2.2.1/1.2.2.1-1-PrimitiveDataType.dart)

#### 1.2.2.2 Tipe Data Koleksi (List, Map)

Tipe data koleksi digunakan untuk menyimpan _beberapa_ nilai dalam satu variabel.

- `List` : Kumpulan nilai yang **berurutan**. Setiap elemen diakses menggunakan _index_ (angka mulai dari 0). Saat urutan penting. Contoh: daftar produk di keranjang belanja, daftar _timeline post_, daftar riwayat transaksi.
- `Map` : Kumpulan pasangan **kunci:nilai** (`key:value`). Tidak berurutan, setiap nilai diakses menggunakan `key` unik. Saat perlu menyimpan data terstruktur dengan label yang jelas. Contoh: data profil pengguna (nama, umur, email), data JSON dari API, konfigurasi aplikasi.

Data dari server (API) untuk startup hampir selalu berbentuk `Map` (untuk satu objek, misal detail user) atau `List` dari `Map` (untuk banyak objek, misal daftar produk).

Analogi Sederhana :

- `List` : Gerbong kereta. Setiap gerbong punya nomor (index 0, 1, 2) dan membawa muatan (nilai).
- `Map` : Kamus. `key` adalah "kata" (misal: 'nama'), dan `value` adalah "definisi"-nya (misal: 'Kafka').

Struktur Dasar Kode : 

```dart
// Use <Generics> to determine the data type in it

// List
List<String> featureList = ['Profile', 'Settings', 'Logout'];

// Accessing List
String firstFeature = featureList[0]; // 'Profile'

// Map
Map<String, dynamic> userProfile = {
  'name': 'Caelus',
  'age': 25,
  'isPremium': true
};

// Accesing Map
String name = userProfile['name']; // 'Caelus'
```

Best Practices Penggunaan :

- Selalu gunakan _generics_ (`<...>`) untuk `List` dan `Map` (misal: `List<String>`, `Map<String, int>`). Jangan pernah gunakan `List` atau `Map` polos. Ini sangat penting untuk _Null Safety_ dan menghindari _runtime error_.
- Gunakan `Map<String, dynamic>` saat menerima data JSON dari API, karena nilainya bisa campuran (`String`, `int`, `bool`).

Contoh Implementasi Kode : 

1.2.2.2-1-CollectionDataType.dart

```dart
void main() {
  // Case Study: Managing a list of features for a startup app
  
  // List: Storing a simple list of features
  final List<String> appFeatures = [
    'User Authentication',
    'Product Catalog',
    'Shopping Cart',
    'Payment Gateway'
  ];

  print('--- App Features ---');
  print('Total features: ${appFeatures.length}');
  print('First feature: ${appFeatures[0]}'); // Index starts at 0
  print('Last feature: ${appFeatures[appFeatures.length - 1]}');
  
  // Adding a new feature
  appFeatures.add('Push Notifications');
  print('After update: $appFeatures');
  
  print('\n--- User Data (Map) ---');
  // Map: Storing structured user data (like from JSON API)
  final Map<String, dynamic> userA = {
    'id': 'u1001',
    'username': 'caelus',
    'email': 'caelus@startup.com',
    'level': 5,
    'isVerified': true
  };

  // Accessing data from Map
  print('Username: ${userA['username']}');
  print('Email: ${userA['email']}');
  print('Is Verified: ${userA['isVerified']}');
}
```

Maka akan beroutput : 

```
--- App Features ---
Total features: 4
First feature: User Authentication
Last feature: Payment Gateway
After update: [User Authentication, Product Catalog, Shopping Cart, Payment Gateway, Push Notifications]

--- User Data (Map) ---
Username: caelus
Email: caelus@startup.com
Is Verified: true
```

Untuk mengakses [1.2.2.2-1-CollectionDataType.dart](../../../code/1.2.2.2-1-CollectionDataType.dart)

#### 1.2.2.3 Tipe Data Dinamis

`dynamic` adalah tipe data khusus yang "mematikan" _type-checking_ Dart. Variabel bertipe `dynamic` bisa menyimpan nilai apa saja (`int`, `String`, `bool`, dll.) dan tipenya bisa diubah-ubah saat _runtime_.

Sebisa mungkin, hindari `dynamic`. Ini menghilangkan jaminan keamanan tipe Dart dan bisa menyebabkan _runtime error_ yang sulit dilacak. Satu-satunya penggunaan yang umum adalah saat berinteraksi dengan data JSON yang strukturnya benar-benar tidak diketahui atau sangat kompleks, tapi bahkan ini biasanya bisa dihindari dengan _data modeling_ yang baik.

`dynamic` adalah kotak "Terserah Isi Apa Saja". Hari ini diisi kelereng, besok bisa diisi air, lusa diisi surat. Masalahnya, saat program mencoba "memantulkan kelereng" tapi ternyata isinya air, program akan _crash_.

Dasar Penerapan Kode : 

```dart
dynamic myVariable = 10; // myVariable is an int
myVariable = 'Now I am a String'; // This is valid
myVariable = false; // This is also valid
```

Best Practices Penggunaan :

- **JANGAN GUNAKAN `dynamic`** kecuali benar-benar terpaksa.
- Selalu lebih baik menggunakan `Object` atau `Object?` jika benar-benar tidak tahu tipenya, karena itu masih lebih aman daripada `dynamic`.
- `Map<String, dynamic>` adalah pengecualian yang umum, karena itu adalah standar untuk mem-parsing JSON.

Contoh implementasi kode : 

1.2.2.3-1-DynamicDataType.dart

```dart
void main() {
  dynamic dangerousVar = 'This is a String';
  
  print(dangerousVar.toUpperCase()); // Works, because it is a String

  dangerousVar = 123; // Changed type to int
  
  // The line below will CRASH the program at runtime
  // because an 'int' does not have a 'toUpperCase' method.
  // The compiler will not warn you about this!
  
  // print(dangerousVar.toUpperCase()); // Uncomment this to see the crash
  
  print('Finished without crash... for now.');
}
```

Bisa beroutput : 

```dart
THIS IS A STRING
Finished without crash... for now.
```

Namun, jika uncomment bagian `  // print(dangerousVar.toUpperCase());` : 

```dart
print(dangerousVar.toUpperCase()); // Uncomment this to see the crash
```

Maka akan keluar error :

```
THIS IS A STRING
Unhandled exception:
NoSuchMethodError: Class 'int' has no instance method 'toUpperCase'.
Receiver: 123
Tried calling: toUpperCase()
#0      Object.noSuchMethod (dart:core-patch/object_patch.dart:38:5)
#1      main (file:///workspaces/Development/flutter/code/1/1.2.2.3/1.2.2.3-1-DynamicDataType.dart:12:22)
#2      _delayEntrypointInvocation.<anonymous closure> (dart:isolate-patch/isolate_patch.dart:314:19)
#3      _RawReceivePort._handleMessage (dart:isolate-patch/isolate_patch.dart:193:12)
```

Hal ini terjadi karena method `toUpperCase` itu di peruntukkan untuk String, tapi si isi variable sudah di rubah angka atau bertipe data integer, maka dari itu method tersebut tidak bisa berjalan dan error.

Bisa akses code [1.2.2.3-1-DynamicDataType.dart](../../../code/1.2.2.3/1.2.2.3-1-DynamicDataType.dart)

### 1.2.3 : String Manipulation & Interpolation

#### 1.2.3.1 String Interpolation

**Interpolation** merupakan cara mudah untuk memasukkan nilai variabel ke dalam sebuah `String`. **Interpolation** digunakan setiap kali perlu menampilkan data dinamis ke pengguna. (Misal: "Selamat datang, Caelus!"). Ini adalah operasi yang paling umum dilakukan pada tipe data `String`.

Dasar Penerapan Kode : 

```dart
String name = 'Caelus';
// Use $var for simple variable
String greeting = 'Hello $name';

int quantity = 5;
double price = 10.0;
// Use ${expression} for property calculation or access
String total = 'Total: ${quantity * price}';
```

Contoh implementasi kode : 

1.2.3.1-1-StringInterpolation.dart

```dart
void main() {
  // Case Study: Generating a welcome message and order summary

  final String userName = 'Caelus';
  final int itemsInCart = 3;
  final double orderTotal = 85.50;

  // Using $variable and ${expression}
  String welcomeMessage = 'Welcome back, $userName!';
  String orderSummary = 'You have $itemsInCart items in your cart. Total: \$${orderTotal.toStringAsFixed(2)}';

  print(welcomeMessage);
  print(orderSummary);
}
```

Maka outputnya :

```
Welcome back, Caelus!
You have 3 items in your cart. Total: $85.50
```

Dan bisa di akses kodenya di [1.2.3.1-1-StringInterpolation.dart](../../../code/1/1.2.3.1/1.2.3.1-1-StringInterpolation.dart)

#### 1.2.3.2 String Manipulation

Manipulation merupakan proses mengubah atau mendapatkan bagian dari String (misal : mengubah jadi huruf besar, memotong, mengganti). Manipulation digunakan untuk memformat data, membersihkan input pengguna, atau mengekstrak informasi. Ini adalah operasi yang paling umum dilakukan pada tipe data `String`.

Contoh dasar penerapan kode :

```dart
String text = '  Hello World  ';
String upper = text.toUpperCase(); // '  HELLO WORLD  '
String lower = text.toLowerCase(); // '  hello world  '
String trimmed = text.trim(); // 'Hello World'
bool contains = text.contains('World'); // true
String replaced = text.replaceAll('Hello', 'Hi'); // '  Hi World  '
```

Contoh implementasi kode :

```dart
void main() {
  // Case Study: Generating a welcome message and order summary
  final String userName = 'Hilmi';
  final int itemsInCart = 3;
  final double orderTotal = 85.50;

  // Example: Normalizing a user input (e.g., search query)
  String rawSearchQuery = '  Flutter tutorial for beginners   ';
  
  // Clean up the input
  String normalizedQuery = rawSearchQuery
      .trim() // Remove leading/trailing whitespace
      .toLowerCase() // Convert to lowercase
      .replaceAll('beginners', 'experts'); // Replace text

  print('Raw query: "$rawSearchQuery"');
  print('Normalized query: "$normalizedQuery"');
  print('Does query contain "flutter"? ${normalizedQuery.contains('flutter')}');
}
```

Output kode :

```
Raw query: "  Flutter tutorial for beginners   "
Normalized query: "flutter tutorial for experts"
Does query contain "flutter"? true
```

Kode bisa di akses [1.2.3.2-1-StringManipulation.dart](../../../code/1/1.2.3.2/1.2.3.2-1-StringManipulation.dart)

### 1.2.4 : Operators

Operator adalah simbol khusus yang digunakan untuk melakukan operasi pada variabel dan nilai. Operator di Dart bermacam-macam :

- Aritmatika : Untuk perhitungan matematis (`+`, `-`, `*`, `/`, `%` (modulo/sisa bagi)). Contoh nyatanya menghitung total harga, diskon, jumlah.
- Perbandingan : Untuk membandingkan dua nilai, hasilnya selalu bool (`==` (sama dengan), `!=` (tidak sama dengan), `>`, `<`, `>=`, `<=`). Contoh nyatanya mengecek kondisi (misal: if (stokBarang > 0)).
- Logika : Untuk menggabungkan ekspresi bool (&& (AND/dan), || (OR/atau), ! (NOT/bukan)). Contoh nyatanya menggabungkan kondisi (misal: if (isLoggedIn && isPremiumUser)).
- Increment/Decrement : (++ (tambah 1), -- (kurang 1)).

Contoh dasar penerapan kode :

```dart
// Aritmatika
int total = 10 + 5; // 15
int remainder = 10 % 3; // 1

// Perbandingan
bool isStockAvailable = 10 > 0; // true
bool isUserBudi = 'Budi' == 'Budi'; // true

// Logika
bool canEnter = true && false; // false (AND)
bool canView = true || false; // true (OR)
bool isOffline = !true; // false (NOT)

// Increment
int counter = 0;
counter++; // counter is now 1
```

Contoh implementasi kode :

1.2.4-1-Operators.dart

```dart
void main() {
  // Case Study: Logic for a startup's e-commerce 'Buy' button
  
  //--- Aritmethic ---
  int itemQuantity = 3;
  double itemPrice = 150.0;
  double shippingFee = 10.0;
  
  double subTotal = itemQuantity * itemPrice;
  double totalCost = subTotal + shippingFee;
  
  print('Subtotal: $subTotal');
  print('Total Cost: $totalCost');

  //--- Comparison ---
  int stock = 5;
  bool isStockAvailable = stock >= itemQuantity; // 5 >= 3 (true)
  
  double userBalance = 500.0;
  bool hasEnoughBalance = userBalance >= totalCost; // 500.0 >= 460.0 (true)

  print('Is stock available? $isStockAvailable');
  print('Has enough balance? $hasEnoughBalance');

  //--- Logics ---
  // The 'Buy' button should only be enabled if...
  // 1. Stock is available AND 2. User has enough balance
  bool isBuyButtonEnabled = isStockAvailable && hasEnoughBalance;
  
  print('---');
  print('Is Buy Button Enabled? $isBuyButtonEnabled');
  
  // Example of '||' (OR)
  bool isPremiumUser = false;
  bool hasVoucher = true;
  bool canGetDiscount = isPremiumUser || hasVoucher;
  print('Can get discount? $canGetDiscount'); // true
}
```

Output kode :

```
Subtotal: 450.0
Total Cost: 460.0
Is stock available? true
Has enough balance? true
---
Is Buy Button Enabled? true
Can get discount? true
```

Kode bisa di akses di [1.2.4-1-Operators.dart](../../../code/1/1.2.4/1.2.4-1-Operators.dart)

### 1.2.5 Null Safety

Null Safety adalah fitur terbesar Dart. Ini adalah jaminan dari compiler bahwa sebuah variabel tidak bisa bernilai null (kosong/tidak ada nilai), kecuali jika diizinkan secara eksplisit. Tujuannya adalah untuk menghilangkan Null Pointer Error (eror paling umum yang menyebabkan aplikasi crash).

Null Safety adalah fitur terbesar Dart. Ini adalah jaminan dari compiler bahwa sebuah variabel tidak bisa bernilai null (kosong/tidak ada nilai), kecuali jika diizinkan secara eksplisit. Tujuannya adalah untuk menghilangkan Null Pointer Error (eror paling umum yang menyebabkan aplikasi crash).

Analogi sederhana :

- Dart (Tanpa Null Safety): Setiap kotak bisa jadi kosong. Setiap kali mau mengambil isi kotak, harus berdoa semoga tidak kosong. Jika kosong, barang (aplikasi) pecah.
- Dart (Dengan Null Safety): Setiap kotak DIJAMIN punya isi. Jika perlu membuat kotak yang boleh kosong, harus diberi stiker peringatan "AWAS, MUNGKIN KOSONG" (?).


Struktur kode dan sintaks : 

- `String name = 'Caelus';` : Non-Nullable (Default). `name` tidak boleh `null`. Wajib diisi nilai.
- `String? description;` : Nullable (Tanda `?`). `description` boleh `null`. Jika diakses, compiler akan memaksa untuk mengeceknya.
- `description!` : Assertion Operator (`!`). "Saya (developer) 100% yakin `description` tidak `null` saat ini". Jika ternyata `null`, aplikasi akan crash. Hindari ini!
- `description ?? 'No description'` : Null-aware Operator (`??`). "Jika `description` `null`, gunakan nilai di sebelah kanan ('No description')".
- `user?.profile?.name` : Null-aware Access (`?.`). "Hanya akses `profile` jika `user` tidak `null`. Hanya akses `name` jika `profile` tidak `null`." Jika `user` `null`, seluruh ekspresi akan mengembalikan `null` (tanpa crash).
- `late String errorMessage;` : Late Keyword (`late`). "Saya janji variabel `errorMessage` ini akan saya isi nilainya nanti (misal, di dalam `try-catch`) sebelum saya gunakan."

Contoh kode implementasi : 

1.2.5-1-NullSafety.dart

```dart
void main() {
  // Case Study: Handling optional user profile data
  
  // Non-nullable: Must be initialized.
  String username = 'marc7th_boyfriend';
  
  // Nullable: Can be null.
  // Example: User hasn't set their bio yet.
  String? userBio; 
  
  // userBio is currently null
  print('Username: $username');
  print('User Bio: $userBio');
  
  // --- Accessing Nullable Variables (The Safe Way) ---
  
  // 1. Using '??' (Default Value)
  // We want to display 'No Bio' if userBio is null.
  String bioToDisplay = userBio ?? 'No Bio';
  print('Bio to display: $bioToDisplay');
  
  // Let's give userBio a value
  userBio = 'Flutter Developer at Startup.id';
  
  // Run the same logic
  bioToDisplay = userBio ?? 'No Bio';
  print('Bio to display (after update): $bioToDisplay');

  // 2. Using '?.' (Safe Navigation)
  // We want to get the length of the bio, but only if the bio exists.
  // If userBio was null, bioLength would be null (not crash).
  int? bioLength = userBio?.length;
  print('Bio length: $bioLength');
  
  // --- 'late' keyword ---
  // Use 'late' when you know a variable will be set before it's read.
  late String welcomeMessage;
  
  bool isLoggedIn = true;
  if (isLoggedIn) {
    welcomeMessage = 'Welcome back!';
  } else {
    welcomeMessage = 'Please log in.';
  }
  
  // By this point, 'welcomeMessage' is guaranteed to be set.
  print(welcomeMessage);
}
```

Maka outputnya :

```
Username: march7th_boyfriend
User Bio: null
Bio to display: No Bio
Bio to display (after update): Flutter Developer at Startup.id
Bio length: 31
Welcome back!
```

Kodenya bisa di akses [1.2.5-1-NullSafety.dart](../../..code/1.2.5/1.2.5-1-NullSafety.dart)

## 1.3 Kontrol Flow

### 1.3.1 Contidional (`if`, `else if`, `else`)

`if-else` adalah struktur kontrol paling dasar untuk membuat "percabangan" dalam kode. Ini memungkinkan program mengambil keputusan dan menjalankan blok kode yang berbeda berdasarkan kondisi (ekspresi) yang bernilai `true` atau `false`.

## 1.4 Struktur Data

## 1.5 Function & OOP Dasar

## 1.6 OOP Lanjutan
