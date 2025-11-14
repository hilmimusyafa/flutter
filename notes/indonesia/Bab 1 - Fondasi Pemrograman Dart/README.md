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

Tipe data koleksi digunakan untuk menyimpan _beberapa_ nilai dalam satu variabel. Sebenarnya ini masuk ke dalam materi bagian Struktur Data yang akan di bahas nanti di bab sendiri, tapi pada kasus ini termasuk juga di tipe data koleksi, maka dari itu kita bahas :

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

### 1.3.1 Perntaaan Percabangan

#### 1.3.1.1 Contidional (`if`, `else if`, `else`)

`if-else` adalah struktur kontrol paling dasar untuk membuat "percabangan" dalam kode. Ini memungkinkan program mengambil keputusan dan menjalankan blok kode yang berbeda berdasarkan kondisi (ekspresi) yang bernilai `true` atau `false`.

Digunakan setiap kali program perlu memilih satu dari beberapa jalur : 

- `if`: Untuk "Jika kondisi A benar, lakukan ini."
- `else if` : Untuk "Jika A salah, tapi kondisi B benar, lakukan ini."
- `else` : Untuk "Jika tidak ada kondisi di atas yang benar, lakukan ini."

Blok kondisi (`...` di dalam `if()`) hampir selalu menggunakan operator perbandingan (`==`, `>`, `!=`) dan operator logika (`&&`, `||`) yang dipelajari di 1.2.6 untuk menghasilkan nilai bool.

Template Dasar Kode :

```dart
if (condition) {
  // Block 1: Executed if 'condition' is true
} else if (anotherCondition) {
  // Block 2: Executed if 'condition' is false
  // AND 'anotherCondition' is true
} else {
  // Block 3: Executed if all preceding conditions are false
}
```

`condition` : Sebuah ekspresi yang harus menghasilkan nilai bool (true atau false).

Contoh implementasi kode : 

1.3.1.1-1-ConditionalControlFlow.dart

```dart
void main() {
  bool isLoggedIn = false;

  if (isLoggedIn) {
    print('Welcome back, user!');
  } else {
    print('Please log in to continue.');
  }
}
```

Maka output untuk `1.3.1.1-1-ConditionalControlFlow.dart` :

```
Please log in to continue.
```

Untuk akses kode bisa di [1.3.1.1-1-ConditionalControlFlow.dart](../../../code/1/1.3.1.1/1.3.1.1-1-ConditionalControlFlow.dart)

Contoh lagi untuk implementasi kode :

1.3.1.1-2-ConditionalControlFlow.dart

```dart
void main() {
  // This role would come from a database or API
  String userRole = 'admin'; 

  if (userRole == 'admin') {
    print('Displaying Admin Dashboard...');
    // showAdminPanel();
  } else if (userRole == 'premium_user') {
    print('Displaying Premium Content...');
    // showPremiumContent();
  } else {
    print('Displaying Guest Homepage...');
    // showGuestHomepage();
  }
}
```

Karena isi variable `userRole` adalah `admin`, maka outputnya adalah : 

```
Displaying Admin Dashboard...
```

Bisa akses kode di [1.3.1.1-2-ConditionalControlFlow.dart](../../../code/1/1.3.1.1/1.3.1.1-2-ConditionalControlFlow.dart)

#### 1.3.1.2 Condtional : Ternary Operator

Operator Ternary (`? :`) adalah shortcut (jalan pintas) untuk `if-else` sederhana yang hanya terdiri dari satu baris. Sangat sering digunakan untuk memberikan nilai ke variabel berdasarkan suatu kondisi.

Analogi Sederhananya ini adalah pertanyaan `Benar/Salah`: `(Kondisi) ? (NilaiJikaBenar) : (NilaiJikaSalah)` "Sedang hujan? Bawa payung : Bawa kacamata hitam".

Yang menjadi catatan di sini adalah gunakan hanya untuk logika yang sangat sederhana (satu kondisi, dua hasil). Jika logika menjadi rumit atau perlu nested (ternary di dalam ternary), segera ganti kembali ke `if-else` standar agar mudah dibaca.

Template dasar kode :

```dart
// variable = (condition) ? valueIfTrue : valueIfFalse;

String textToDisplay = (isLoggedIn) ? 'Logout' : 'Login';
```

Contoh implementasi kode :

1.3.1.2-1-TernaryOperatorConditional.dart

```dart
void main() {
  bool isUserSubscribed = true;

  // Use ternary operator to assign a value to a variable
  String buttonText = isUserSubscribed ? 'View Content' : 'Subscribe Now';

  print('Button display text: $buttonText');
}
```

Maka outputnya akan :

```
Button display text: View Content
```

Untuk membuka kode di [1.3.1.2-1-TernaryOperatorConditional.dart](../../../code/1/1.3.1.2/1.3.1.2-1-TernaryOperatorConditional.dart)

Contoh lagi untuk perhitungan harga :

1.3.1.2-2-TernaryOperatorConditional.dart

```dart
void main(){
  // Example 2: Calculating price
  double basePrice = 100.0;
  bool isPremiumMember = false;

  double finalPrice = isPremiumMember ? (basePrice * 0.8) : basePrice;
  print('Final price: $finalPrice');
}
```

Maka outputnya akan :

```
Final price: 100.0
```

Dan untuk akses kodenya bisa di [1.3.1.2-2-TernaryOperatorConditional.dart](../../../code/1/1.3.1.2/1.3.1.2-2-TernaryOperatorConditional.dart)

#### 1.3.1.3 : Conditional `switch-case`

`switch-case` adalah alternatif untuk `if-else if-else` yang panjang. switch lebih bersih digunakan ketika perlu membandingkan satu variabel dengan banyak nilai konstan yang berbeda (`String`, `int`, `enum`, dll).

`switch` seperti tombol lift. Variabelnya adalah "tombol yang ditekan" (`switch (tombol)`). `case` adalah apa yang terjadi untuk setiap lantai (`case 1`:, `case 2:`, dst.). `default` adalah jika tombol yang ditekan tidak valid (misal: "tombol alarm").

Template dasar kode :

```dart
var variableToTest = someValue;

switch (variableToTest) {
  case constantValue1:
    // Code to run if variableToTest == constantValue1
    break; // 'break' is mandatory to exit the switch

  case constantValue2:
    // Code to run if variableToTest == constantValue2
    break;

  default:
    // Code to run if no other case matches
    // This is like the final 'else'
}
```

Best Practices Penggunaan :

- Selalu sertakan `default` case untuk menangani nilai yang tidak terduga.
- Setiap `case` (non-kosong) harus diakhiri dengan break (atau `return`, `throw`).
- `switch` sangat baik digunakan dengan `enum` (tipe data khusus untuk konstanta).

Contoh implementasi kode :

1.3.1.3-1-SwitchCaseConditional.dart

```dart
void main() {
  // This status would come from an API
  String orderStatus = 'SHIPPED';

  switch (orderStatus) {
    case 'PENDING':
      print('Order is pending payment.');
      break;
    case 'PROCESSING':
      print('Order is being prepared by the seller.');
      break;
    case 'SHIPPED':
      print('Order is on its way to the destination.');
      break;
    case 'DELIVERED':
      print('Order has been delivered.');
      break;
    case 'CANCELLED':
      print('Order has been cancelled.');
      break;
    default:
      print('Unknown order status: $orderStatus');
  }
}
```

Karena isi di variablenya `SHIPPED` maka outputnya :

```
Order is on its way to the destination.
```

Untuk akses kode di [1.3.1.3-1-SwitchCaseConditional.dart](../../../code/1/1.3.1.3/1.3.1.3-1-SwitchCaseConditional.dart)

### 1.3.2 Looping

#### 1.3.2.1 For Loop

`for` loop (perulangan `for`) digunakan untuk mengeksekusi blok kode berulang kali sebanyak jumlah yang sudah ditentukan.

Digunakan ketika diketahui persis berapa kali perulangan harus terjadi. (Misal: "Lakukan ini 10 kali", "Proses setiap barang dari 5 barang di keranjang"). 

Seperti instruksi "Lari putari lapangan 5 kali", proses itu dinamakan Looping : 

- `int i = 0;` (Mulai hitungan dari 0).
- `i < 5;` (Kondisi: Terus lari selama hitungan masih di bawah 5).
- `i++` (Setelah 1 putaran selesai, tambahkan hitungan).

Template dasar kode :


```dart
// for (initializer; condition; incrementer) {
//   // Code block to repeat
// }

for (int i = 0; i < 5; i++) {
  // This block will run 5 times (i=0, 1, 2, 3, 4)
  print('Current number is: $i');
}
```

Contoh kode implementasinya : 

1.3.2.1-1-ForLoop.dart

```dart
void main() {
  List<double> itemPrices = [50.0, 120.50, 30.25];
  double total = 0.0;

  // Use a for loop to iterate based on index
  for (int i = 0; i < itemPrices.length; i++) {
    total = total + itemPrices[i];
    print('Added ${itemPrices[i]}, new total: $total');
  }

  print('---');
  print('Final cart total: $total');
}
```

Maka outputnya :

```
Added 50.0, new total: 50.0
Added 120.5, new total: 170.5
Added 30.25, new total: 200.75
---
Final cart total: 200.75
```

Disini terlihat Looping berdsarkan harga, setiap state harga di tambah ke total, sehingga bisa mendapatkan semua total dari yang ada di list tersebut.

Kode bisa diakses di [1.3.2.1-1-ForLoop.dart](../../../code/1/1.3.2.1/1.3.2.1-1-ForLoop.dart)

Catatan : Ada cara yang lebih baik untuk melakukan ini (yaitu for-in), yang akan dibahas nanti.

#### 1.3.2.2 `while` Loop & `do-while`

`while` loop (perulangan `while`) digunakan untuk mengeksekusi blok kode berulang kali selama (while) sebuah kondisi bernilai `true`. Jumlah perulangan tidak diketahui di awal.

Sesuai namanya, perbedaan `while` dan `do-while` :

- `while` : Cek kondisi dulu, baru jalankan kode. Bisa jadi tidak berjalan sama sekali jika kondisi awalnya false. Analogi sederhananya, "Selama pintu masih tertutup, teruslah mengetuk." (Jika pintu sudah terbuka, tidak akan mengetuk).
- `do-while` : Jalankan kode dulu (1 kali), baru cek kondisi. Dijamin berjalan minimal satu kali. Analogi sederhananya, "Ketuk pintu sekali, lalu cek. Selama pintu masih tertutup, teruslah mengetuk." (Pasti mengetuk minimal sekali)."

Template dasar kode `while` :

```dart
while (condition) {
  // Code to repeat as long as 'condition' is true
  // IMPORTANT: Something inside this block must
  // eventually make the 'condition' false,
  // or this will be an infinite loop!
}
```

Template dasar kode `do-while` :

```dart
do {
  // This code runs at least once
} while (condition);
```

Contoh kode implementasi `while` :

1.3.2.2-1-WhileLoop.dart

```dart
void main() {
  int maxRetries = 3;
  int currentRetry = 0;
  bool isConnected = false;

  print('Attempting to connect to payment gateway...');

  while (!isConnected && currentRetry < maxRetries) {
    currentRetry++;
    print('Attempt $currentRetry: Connecting...');

    // Simulate a failed connection
    if (currentRetry < maxRetries) {
      print('Connection failed. Retrying...');
    } else {
      // Simulate a successful connection on the last try
      isConnected = true;
      print('Connection successful!');
    }
  }

  if (!isConnected) {
    print('Failed to connect after $maxRetries attempts.');
  }
}
```

Karena mengulang sebanyak 3 kali dan rupanya disimulasikan mendapatkan nilai `true`, maka output akan :

```
Attempting to connect to payment gateway...
Attempt 1: Connecting...
Connection failed. Retrying...
Attempt 2: Connecting...
Connection failed. Retrying...
Attempt 3: Connecting...
Connection successful!
```

Kode dapat diakses di [1.3.2.2-1-WhileLoop.dart](../../../code/1/1.3.3.2/1.3.2.2-1-WhileLoop.dart)

Dan berikut juga untuk kode versi `do-while` dengan simulasi yang sama :

1.3.2.2-2-WhileLoop.dart

```dart
void main() {
  int maxRetries = 3;
  int currentRetry = 0;
  bool isConnected = false;

  print('Attempting to connect to payment gateway...');

  do {
    currentRetry++;
    print('Attempt $currentRetry: Connecting...');

    // Simulate a failed connection
    if (currentRetry < maxRetries) {
      print('Connection failed. Retrying...');
    } else {
      // Simulate a successful connection on the last try
      isConnected = true;
      print('Connection successful!');
    }
  } while (!isConnected && currentRetry < maxRetries);

  if (!isConnected) {
    print('Failed to connect after $maxRetries attempts.');
  }
}
```

Karena logika yang sama, hasil pun mengeluarkan sama seperti yang sebelumnya : 

```
Attempting to connect to payment gateway...
Attempt 1: Connecting...
Connection failed. Retrying...
Attempt 2: Connecting...
Connection failed. Retrying...
Attempt 3: Connecting...
Connection successful!
```

Pada akhirnya penerapan `while` dan `do-while` itu hampir mirip, disesuaikan lagi untuk gaya penulisan kode masing-masing.

Kode dapat diakses di [1.3.2.2-2-WhileLoop.dart](../../../code/1/1.3.2.2/1.3.2.2-2-WhileLoop.dart)

### 1.3.3 Looping Control : `break` & `continue`

`break` dan `continue` digunakan untuk mengontrol jalannya loop (for, while) dari dalam : 

- `break` : Menghentikan paksa seluruh loop dan keluar. Kode di bawah loop akan lanjut dieksekusi.
- `continue` : Menghentikan iterasi saat ini saja dan langsung melompat ke iterasi berikutnya.

Analogi Sederhananya, misal ada case tim sedang memeriksa 10 kotak produk : 

- `break` : "Cari satu barang cacat. Jika ketemu di kotak ke-3, berhenti cari, tidak usah periksa kotak 4-10. Selesai."
- `continue` : "Laporkan semua barang yang cacat. Jika kotak ke-3 cacat, laporkan. Jika kotak ke-4 bagus, abaikan (continue), lanjut periksa kotak ke-5." (Contoh yang lebih baik: "Pisahkan semua barang yang bukan mainan. Jika kotak 3 mainan, abaikan (continue), lanjut ke kotak 4").

Template Dasar Kode :

```dart
for (int i = 0; i < 10; i++) {
  if (conditionA) {
    break; // Exit the for loop immediately
  }
  if (conditionB) {
    continue; // Skip the rest of this iteration, go to i++
  }
  // Code to run if not A or B
}
```

Contoh kasus implementasi `continue` :

1.3.3-1-LoopingControlBreak.dart

```dart
void main() {
  List<String> products = [
    'Laptop', 
    'Mouse', 
    'Keyboard (Out of Stock)', 
    'Monitor', 
    'Webcam'
  ];

  print('--- Using continue ---');
  // Goal: Print all available products
  for (int i = 0; i < products.length; i++) {
    if (products[i].contains('(Out of Stock)')) {
      print('Skipping ${products[i]}...');
      continue; // Skip this iteration, go to the next product
    }
    print('Processing product: ${products[i]}');
  }
}
```

Maka akan beroutput : 

```
--- Using continue ---
Processing product: Laptop
Processing product: Mouse
Skipping Keyboard (Out of Stock)...
Processing product: Monitor
Processing product: Webcam
```

Untuk kodenya bisa diakses di [1.3.3-1-LoopingControlBreak.dart](../../../code/1/1.3.3/1.3.3-1-LoopingControlBreak.dart)

Dan untuk contoh dari `break` :

```dart
void main() {
  List<String> products = [
    'Laptop', 
    'Mouse', 
    'Keyboard (Out of Stock)', 
    'Monitor', 
    'Webcam'
  ];

  print('\n--- Using break ---');
  // Goal: Find the first 'Out of Stock' item and stop
  for (int i = 0; i < products.length; i++) {
    if (products[i].contains('(Out of Stock)')) {
      print('Found Out of Stock item: ${products[i]}. Stopping process.');
      break; // Exit the loop entirely
    }
    print('Checking product: ${products[i]}');
  }
}
```

Dan akan beroutput :

```
--- Using break ---
Checking product: Laptop
Checking product: Mouse
Found Out of Stock item: Keyboard (Out of Stock). Stopping process.
```

Terlihat perbedaannya, yang satu kasusnya jika ada barang kosong maka akan tetap di lanjut, dan yang satu kasusnya jika ada barang yang kosong maka akan berhenti.

Dan untuk akses kodenya bisa di [1.3.3-2-LoopingControlContinue.dart](../../../code/1/1.3.3/1.3.3-2-LoopingControlContinue.dart)

### 1.3.4 Collection Control 

#### 1.3.4.1 Collection Control `for-in` Loop

`for-in` adalah cara yang lebih modern, bersih, dan aman untuk melakukan iterasi pada setiap elemen di dalam Collection (seperti `List` atau `Set`).

Gunakan ini setiap kali tujuannya adalah memproses setiap elemen dalam `List`. Ini lebih baik daripada `for (int i = 0; ...)` karena tidak perlu mengelola index (`i`) dan menghindari error "index out of bounds". Ini adalah cara yang disukai untuk memproses `List`.

Template dasar kode :

```dart
List<String> myList = ['a', 'b', 'c'];

// for (var [variableName] in [listName]) { ... }
for (var item in myList) {
  // 'item' will be 'a', then 'b', then 'c'
  print(item);
}
```

Best Practices Penggunaan :

- Selalu utamakan `for-in` daripada `for` standar jika tidak memerlukan index `i`.
- Beri nama variabel yang jelas (misal: `for (var product in products)` bukan `for (var x in list)`).

Contoh Kode Implementasi :

1.3.4.1-1-CollectionControlForInLoop.dart

```dart
void main() {
  // A list of features for the startup's app
  final List<String> features = [
    'User Profile', 
    'Product Catalog', 
    'Shopping Cart'
  ];

  print('--- App Features ---');
  // Iterate over each element directly
  for (final featureName in features) {
    // 'featureName' holds the value of the element
    print('- $featureName');
  }
}
```

Maka output yang dihasilkan :

```
--- App Features ---
- User Profile
- Product Catalog
- Shopping Cart
```

Bisa akses kode di [1.3.4.1-1-CollectionControlForInLoop.dart
](../../../code/1/1.3.4.1/1.3.4.1-1-CollectionControlForInLoop.dart)

#### 1.3.4.2 Collection Control : Collection `if` & `for`

Ini adalah fitur Dart yang sangat kuat yang memungkinkan penggunaan `if` dan `for` langsung di dalam deklarasi `List` (atau `Map/Set`) untuk membangun koleksi secara dinamis.

Ini sangat penting di Flutter. Ini digunakan untuk membangun daftar widget (UI) secara dinamis :

- Collection `if` : "Hanya masukkan elemen ini ke `List` jika kondisi `true`."
- Collection `for` : "Lakukan looping dan masukkan hasil dari setiap iterasi ke dalam `List` ini."

Hubungannya dengan Konsep Lain Ini seperti `if` dan `for-in` yang ditempatkan di dalam `List`.

Dasar template kode :

```dart
bool includeAdmin = true;
List<String> productNames = ['Laptop', 'Mouse'];

List<String> menuItems = [
  'Home',
  'Profile',
  // Collection 'if'
  if (includeAdmin) 'Admin Panel', 

  // Collection 'for'
  for (var product in productNames) 'Buy $product'
];
```

Dan berikut juga contoh dari kode implementasinya :

1.3.4.2-1-CollectionControlIfFor.dart

```dart
void main() {
  // Data that would come from app state
  bool isUserAdmin = true;
  bool isPremiumSubscriber = false;
  List<String> availableCourses = ['Dart Basics', 'Flutter UI'];

  // Build a dynamic list of menu items
  List<String> navigationMenu = [
    'Home',
    'Profile',

    // Collection 'if': Show 'Premium' only if subscribed
    if (isPremiumSubscriber) 'Premium Content',

    // Collection 'if': Show 'Admin' only if admin
    if (isUserAdmin) 'Admin Dashboard',

    // Collection 'for': Add all available courses
    for (var course in availableCourses) 'View Course: $course',

    'Logout'
  ];

  print('--- Generated Menu ---');
  // Print the final list
  for (var item in navigationMenu) {
    print(item);
  }
}
```

Dan outputnya :

```
--- Generated Menu ---
Home
Profile
Admin Dashboard
View Course: Dart Basics
View Course: Flutter UI
Logout
```

Dan untuk percobaan kodenya ada di [1.3.4.2-1-CollectionControlIfFor.dart](../../../code/1/1.3.4.2/1.3.4.2-1-CollectionControlIfFor.dart)

## 1.4 Struktur Data & Manipulasi Koleksi

### 1.4.1 : List (Operasi Lanjutan)

Ya, di ulang lagi, `List` adalah kumpulan data yang terurut dan memiliki indeks. Ini adalah struktur data yang paling sering digunakan di Flutter. Setiap elemen memiliki posisi nomor (dimulai dari 0).

Digunakan ketika urutan data itu penting atau ketika data boleh duplikat. Contoh: Daftar pesan di aplikasi chat, daftar produk di halaman beranda, atau daftar notifikasi.

Di Flutter, `List` adalah bahan baku utama untuk widget `ListView` dan `Column`. Analogi sederhananya mungkin, Daftar belanjaan atau rak buku. Buku pertama ada di posisi 0, buku kedua di posisi 1, dan seterusnya.

Template Dasar Kode : 

```dart
// List<TipeData> nameVariabel = [element1, element2];
List<String> startupNames = ['Gojek', 'Tokopedia'];
```

Operasi umum pada `List` : 

- `add(item)` : Menambah item di akhir.
- `insert(index, item)` : Menyisipkan item di posisi tertentu.
- `remove(item)` : Menghapus item tertentu.
- `length` : Mendapatkan jumlah item.

Ingat, untuk penggunaan terbaik. Selalu tentukan tipe datanya (Generics) secara eksplisit, misal `List<int>` bukan hanya `List`. Dan gunakan `final` jika variabel `List` itu sendiri tidak akan diganti dengan `List` baru (meskipun isinya bisa berubah).

Contoh Implementasi kode :

1.4.1-1-List.dart

```dart
void main() {
  // Case Study: Managing a list of investors for a startup pitch
  
  // 1. Declaration
  // Explicitly typed list of Strings
  final List<String> investors = ['Alpha Capital', 'Beta Ventures'];
  
  print('Initial Investors: $investors');

  // 2. Adding Data
  investors.add('Gamma Angel Fund');
  print('After adding one: $investors');

  // 3. Accessing Data (Index starts at 0)
  String firstInvestor = investors[0];
  print('Lead Investor: $firstInvestor');

  // 4. Removing Data
  investors.remove('Beta Ventures'); // Investor pulled out
  print('Current Investors: $investors');
  
  // 5. Updating Data
  investors[0] = 'Alpha Capital Global'; // Name change
  print('Updated List: $investors');
}
```

Dan outputnya akan seperti ini :

```
Initial Investors: [Alpha Capital, Beta Ventures]
After adding one: [Alpha Capital, Beta Ventures, Gamma Angel Fund]
Lead Investor: Alpha Capital
Current Investors: [Alpha Capital, Gamma Angel Fund]
Updated List: [Alpha Capital Global, Gamma Angel Fund]
```

Untuk akses kode bisa di [1.4.1-1-List.dart](../../../code/1/1.4.1.1/1.4.1-1-List.dart)

### 1.4.2 : Set (Himpunan Unik)

`Set` adalah kumpulan data yang tidak berurut dan wajib unik. Tidak boleh ada dua data yang sama persis di dalam `Set`. Digunakan ketika perlu memastikan tidak ada duplikasi. Contoh: Menyimpan daftar tags artikel (tidak boleh ada dua tag "Teknologi"), atau menyimpan ID pengguna yang sudah membaca notifikasi.

Perbedaan dengan `List` adalah `Set` menggunakan kurung kurawal `{}` (seperti `Map`, tapi tanpa kunci), sedangkan `List` menggunakan kurung siku `[]`. Pencarian data `(contains)` di `Set` jauh lebih cepat daripada di `List` untuk data jumlah besar.

Analogi Sederhanannya, kantong kelereng ajaib di mana jika memasukkan kelereng merah padahal sudah ada kelereng merah di dalamnya, kelereng baru itu akan lenyap. Hanya satu dari setiap jenis yang bisa masuk. Gunakan Set untuk memfilter duplikat dari sebuah `List` (dengan `list.toSet().toList()`).

Template dasar kode : 

```dart
// Set<TipeData> namaVariabel = {elemen1, elemen2};
Set<String> tags = {'Mobile', 'Web'};
```

Contoh kode implementasinya : 

1.4.2-1-Set.dart

```dart
void main() {
  // Case Study: Managing unique tags for a startup blog post
  
  // 1. Declaration
  // Note the use of curly braces {}
  final Set<String> articleTags = {'Startup', 'Funding', 'Tech'};
  
  print('Initial Tags: $articleTags');

  // 2. Attempting to add duplicate
  // 'Tech' is already in the set. This operation will be ignored.
  bool isAdded = articleTags.add('Tech'); 
  
  print('Was "Tech" added? $isAdded'); // Output: false
  print('Tags after duplicate attempt: $articleTags'); // No change

  // 3. Adding new unique item
  articleTags.add('Growth');
  print('Tags after adding "Growth": $articleTags');

  // 4. Checking existence (Very fast operation)
  bool hasFundingTag = articleTags.contains('Funding');
  print('Contains "Funding"? $hasFundingTag');
}
```

Maka akan berouput :

```
Initial Tags: {Startup, Funding, Tech}
Was "Tech" added? false
Tags after duplicate attempt: {Startup, Funding, Tech}
Tags after adding "Growth": {Startup, Funding, Tech, Growth}
Contains "Funding"? true
```

Kodenya ada di [1.4.2-1-Set.dart](../../../code/1/1.4.2/1.4.2-1-Set.dart)

Kita uji coba lagi untuk memaksa menambahkan tags yang sudah ada :

1.4.2-2-SetDuplicateTest.dart

```dart
void main() {
  // Case Study: Managing unique tags for a startup blog post
  final Set<String> articleTags = {'Startup', 'Funding', 'Tech'};
  
  print('Initial Tags: $articleTags');
  print('Total Tags: ${articleTags.length}\n');

  // 1. Attempting to add duplicate multiple times
  print('--- Trying to add duplicate "Tech" three times ---');
  bool add1 = articleTags.add('Tech');
  bool add2 = articleTags.add('Tech');
  bool add3 = articleTags.add('Tech');
  
  print('Result of first add: $add1');
  print('Result of second add: $add2');
  print('Result of third add: $add3');
  print('Tags after duplicate attempts: $articleTags');
  print('Total Tags: ${articleTags.length}\n');

  // 2. Adding new unique tag
  print('--- Adding unique tag "Growth" ---');
  bool addedGrowth = articleTags.add('Growth');
  print('Was "Growth" added? $addedGrowth');
  print('Tags after adding "Growth": $articleTags');
  print('Total Tags: ${articleTags.length}');
}
```

Dan bisa di lihat dari output : 

```
Initial Tags: {Startup, Funding, Tech}
Total Tags: 3

--- Trying to add duplicate "Tech" three times ---
Result of first add: false
Result of second add: false
Result of third add: false
Tags after duplicate attempts: {Startup, Funding, Tech}
Total Tags: 3

--- Adding unique tag "Growth" ---
Was "Growth" added? true
Tags after adding "Growth": {Startup, Funding, Tech, Growth}
Total Tags: 4
```

Dan ya, tetap sama hasilnya, tidak bisa selagi data sudah ada di dalam `Set`.

Untuk mencoba kode bisa di [1.4.2-2-SetDuplicateTest.dart](../../../code/1/1.4.2/1.4.2-2-SetDuplicateTest.dart)

### 1.4.3 : Map (Kamus / Key-Value)

`Map` adalah objek yang mengasosiasikan keys (kunci) dan values (nilai). Setiap kunci harus unik, tetapi nilai boleh sama. Map ini adalah struktur data terpenting untuk komunikasi dengan Backend/API. Format JSON (Javascript Object Notation) dipresentasikan sebagai Map di Dart. Digunakan untuk menyimpan data objek terstruktur seperti "User", "Product", atau "Config".

Analogi sederhananya kamus. Kata adalah Key, definisi adalah Value. Atau loker penyimpanan: Nomor loker adalah Key, barang di dalamnya adalah Value. Dan ingat, selalu gunakan `Map<String, dynamic>` saat berurusan dengan data JSON.

Lagi-lagi sintaks dasar template kode : 

```dart
// Map<TipeKey, TipeValue> namaVariabel = {key: value};
Map<String, dynamic> user = {
  'name': 'Budi',
  'age': 20
};
```

Parameter :

- `String` : Biasanya digunakan sebagai tipe Key.
- `dynamic` : Sering digunakan sebagai tipe Value karena satu Map bisa berisi String, int, dan bool sekaligus

Contoh kode implementasi :

1.4.3-1-Map.dart

```dart
void main() {
  // Case Study: Representing a Product detail from an API response
  
  // 1. Declaration
  // Key is String, Value is dynamic (can be String, double, bool)
  final Map<String, dynamic> productData = {
    'id': 'prod_001',
    'name': 'Premium Coffee',
    'price': 25000.0,
    'isAvailable': true,
    'tags': ['Beverage', 'Hot'] // Value can even be a List!
  };

  print('Product Name: ${productData['name']}');

  // 2. Adding/Updating Data
  // If key exists, it updates. If not, it adds.
  productData['stock'] = 50; // New key
  productData['price'] = 27000.0; // Update existing key

  print('Updated Price: ${productData['price']}');
  print('Stock Count: ${productData['stock']}');

  // 3. Handling Missing Keys
  // Accessing a non-existent key returns null
  print('Discount: ${productData['discount']}'); // Output: null
}
```

Outputnya bisa :

```
Product Name: Premium Coffee
Updated Price: 27000.0
Stock Count: 50
Discount: null
```

Untuk akses kodenya di [1.4.3-1-Map.dart](../../../code/1/1.4.3/1.4.3-1-Map.dart)

### 1.4.4 : Manipulasi Collection (Higher-Order Functions)

Dart menyediakan metode canggih untuk memproses `List` atau `Map` tanpa menggunakan looping manual (`for`). Metode seperti `.map()`, `.where()`, dan `.toList()` adalah fondasi pemrograman declarative di Flutter. Penggunaan jelasnya seperi ini : 

- `.map()` : Mengubah format data. (Contoh: Dari data JSON menjadi Widget Flutter).
- `.where()` : Memfilter data. (Contoh: Hanya tampilkan produk yang stoknya > 0).

Teknik ini menggantikan penggunaan `for` loop yang panjang menjadi satu baris kode yang bersih (clean code).

Template dasar kode `.map` : 

```dart
var newList = oldList.map((item) {
   return transform(item);
}).toList();
```

Template dasar kode `.where` :

```dart
var filteredList = oldList.where((item) {
   return condition(item); // return true to keep
}).toList();
```

Fungsi-fungsi ini mengembalikan Iterable (data malas/lazy). Wajib diakhiri dengan `.toList()` untuk mengubahnya kembali menjadi List standar agar bisa dipakai.

Contoh implementasi kode :

1.4.4-1-ManipulationCollection.dart

```dart
void main() {
  // Case Study: Processing raw transaction data for a dashboard
  
  List<Map<String, dynamic>> transactions = [
    {'id': 't1', 'amount': 100.0, 'status': 'success'},
    {'id': 't2', 'amount': 50.0, 'status': 'pending'},
    {'id': 't3', 'amount': 200.0, 'status': 'success'},
    {'id': 't4', 'amount': 0.0, 'status': 'failed'},
  ];

  print('--- Original Data ---');
  print(transactions);

  // 1. Filtering (.where)
  // Case: We only want to calculate revenue from 'success' transactions
  var successfulTransactions = transactions.where((tx) {
    return tx['status'] == 'success';
  }).toList();

  print('\n--- Filtered Data (Success only) ---');
  print(successfulTransactions);

  // 2. Transformation (.map)
  // Case: We need a list of just the transaction IDs to display simply
  List<String> transactionIds = transactions.map((tx) {
    return 'ID: ${tx['id']}';
  }).toList();

  print('\n--- Transformed Data (IDs only) ---');
  print(transactionIds);

  // 3. Chaining (Advanced)
  // Case: Get amounts of successful transactions only
  // Steps: Filter success -> Map to amount -> Convert to List
  List<double> successAmounts = transactions
      .where((tx) => tx['status'] == 'success') // Filter
      .map((tx) => tx['amount'] as double)      // Transform
      .toList();                                // Finalize

  print('\n--- Chained Operation (Success Amounts) ---');
  print(successAmounts);
}
```

Maka output :

```
--- Original Data ---
[{id: t1, amount: 100.0, status: success}, {id: t2, amount: 50.0, status: pending}, {id: t3, amount: 200.0, status: success}, {id: t4, amount: 0.0, status: failed}]

--- Filtered Data (Success only) ---
[{id: t1, amount: 100.0, status: success}, {id: t3, amount: 200.0, status: success}]

--- Transformed Data (IDs only) ---
[ID: t1, ID: t2, ID: t3, ID: t4]

--- Chained Operation (Success Amounts) ---
[100.0, 200.0]
```

Dan code bisa di akses [1.4.4-1-ManipulasiCollection.dart](../../../code/1/1.4.4/1.4.4-1-ManipulasiCollection.dart) 

## 1.5 Function 

### 1.5.1 : Function Declaration & Parameters (Positional vs Named)

Function (fungsi) adalah blok kode yang dibungkus dan diberi nama agar bisa digunakan berulang kali. Parameter adalah input yang diterima fungsi untuk diproses. Di Dart (dan Flutter), ada dua jenis parameter utama :

1. Positional : Parameter wajib yang urutannya harus sesuai.
2. Named : Parameter opsional (kecuali ditandai required) yang dipanggil dengan menyebutkan namanya. Ini adalah sintaks paling sering digunakan di Widget Flutter.

Digunakan untuk memecah kode yang panjang menjadi bagian-bagian kecil (modular). Named parameter digunakan untuk meningkatkan keterbacaan kode, terutama jika sebuah fungsi memiliki banyak konfigurasi (seperti Widget di Flutter).

Analogi Sederhananya Fungsi seperti blender : 

- Input (Parameter) : Buah, Air, Gula.
- Proses : Menghancurkan dan mencampur.
- Output (Return Value) : Jus.

Template Dasar (Positional) :

```dart
ReturnType functionName(Type param1, Type param2) {
  // logic
  return value;
}
```

Template Dasar (Named - Gaya Flutter), gunakan kurung kurawal `{}`:

```dart
ReturnType functionName({required Type param1, Type? param2}) {
  // logic
  return value;
}
```

Best Practices : Gunakan Named Parameters jika fungsi memiliki lebih dari 2 argumen atau jika tipe datanya sama (untuk menghindari kebingungan posisi).

Contoh kode implementasi lanjutan :

1.5.1-1-FunctionParameters.dart

```dart
void main() {
  // Case Study: Calculating simple startup metrics

  // 1. Calling a standard Positional Function
  // Order matters: Revenue first, then Cost.
  double profit = calculateProfit(1000.0, 400.0);
  print('Profit: \$$profit');

  // 2. Calling a Named Parameter Function (Flutter Style)
  // Order does NOT matter. Readability is higher.
  // Useful when creating complex objects like User Profiles.
  createUserProfile(
    username: 'founder_001',
    email: 'ceo@startup.id', 
    age: 25 // Optional parameter
  );
}

// --- Function Definitions ---

// Positional Parameters
double calculateProfit(double revenue, double cost) {
  return revenue - cost;
}

// Named Parameters ({})
// 'required' means it must be provided. 
// 'int? age' implies age is optional and can be null.
void createUserProfile({
  required String username, 
  required String email, 
  int? age
}) {
  print('Creating user: $username ($email)');
  if (age != null) {
    print('User age: $age');
  }
}
```

Dan akan beroutput dari 2 fungsi :

```
Profit: $600.0
Creating user: founder_001 (ceo@startup.id)
User age: 25
```

Bisa di akses di [1.5.1-1-FunctionParameters.dart](../../../code/1/1.5.1/1.5.1-1-FunctionParameters.dart)

### 1.5.2 Anonymous Function & Arrow Syntax (`=>`)

Fungsi tanpa nama. Biasanya dibuat langsung di tempat ia dibutuhkan (misal: sebagai argumen fungsi lain). Arrow Syntax (`=>`): Cara penulisan singkat untuk fungsi yang hanya berisi satu baris perintah dan langsung mengembalikan nilai (implicit return)

Sangat sering digunakan di Flutter untuk event handler (seperti aksi saat tombol ditekan : `onPressed: () {}`) atau saat memanipulasi list (seperti `.map` atau `.where`). Analogi sederhananya seperti catatan tempel (sticky note) instruksi sekali pakai ("Tutup pintu saat keluar") yang ditempel langsung di pintu, tanpa perlu menulis prosedur resmi di buku manual.

Template dasar :

```dart
// Anonymous Function block
() {
  // multiple lines of code
}

// Arrow Function (Fat Arrow)
(param) => expression; // equivalent to { return expression; }
```

Contoh implementasi kode :

1.5.2-1-AnonymousFunction.dart

```dart
void main() {
  List<double> monthlyRevenues = [500.0, 1200.0, 3000.0];

  // 1. Anonymous Function (Block style)
  // Used when logic is complex (more than 1 line)
  print('--- Monthly Report ---');
  monthlyRevenues.forEach((revenue) {
    double tax = revenue * 0.1;
    print('Revenue: $revenue (Tax: $tax)');
  });

  // 2. Arrow Syntax (=>)
  // Used for concise, single-line logic.
  // Case: Converting all values to "thousands" format (3.0k)
  // map() returns an Iterable, so we add toList()
  List<String> formatted = monthlyRevenues.map((r) => '${r/1000}k').toList();
  
  print('\n--- Formatted Data ---');
  print(formatted); // Output: [0.5k, 1.2k, 3.0k]
}
```

Maka outuputnya : 

```
--- Monthly Report ---
Revenue: 500.0 (Tax: 50.0)
Revenue: 1200.0 (Tax: 120.0)
Revenue: 3000.0 (Tax: 300.0)

--- Formatted Data ---
[0.5k, 1.2k, 3.0k]
```

Dan kodenya bisa diakses di [1.5.2-1-AnonymousFunction.dart](../../../code/1/1.5.2/1.5.2-1-AnonymousFunction.dart)

### 1.5.3 Procedure (Fungsi Tanpa Return Value)

Procedure adalah fungsi yang tidak mengembalikan nilai (void). Biasanya digunakan untuk menjalankan aksi, seperti mencetak log, mengubah state, menambah item ke list, atau menampilkan pesan ke pengguna.

Analogi sederhanannya adalah "Kerjakan sesuatu, tapi tidak perlu mengembalikan nilai". Kalau fungsi biasa seperti mesin jual otomatis yang memberikan barang, procedure seperti tombol lift: ditekan → melakukan aksi → selesai, tanpa ada “hasil” yang dikembalikan.

Kenapa prosedur digunakan? Untuk memecah kode menjadi bagian kecil dan rapi, selain itu untuk menghindari pengulangan kode di banyak tempat. Pada Flutter umum terjadi seperti update UI, validasi form, trigger event, logging.

Template dasar kode : 

```dart
// Procedure: fungsi tanpa return value
void functionName(Type param) {
  // aksi yang dilakukan
}

// Procedure tanpa parameter
void sayHello() {
  print('Hello!');
}

// Procedure dengan named parameters
void logMessage({required String message, int level = 1}) {
  print('[$level] $message');
}
```

Contoh implementasi kode : 

1.5.3-1-ProcedureExample.dart

```dart
void main() {
  // 1. Simple procedure
  print('--- User Logger ---');
  logLogin('Caelus'); // memanggil procedure

  // 2. List modifying procedure 
  List<String> tasks = ['Review PR', 'Fix bug'];
  addTask(tasks, 'Write documentation');

  print('\n--- Updated Task List ---');
  tasks.forEach((t) => print('- $t'));

  // 3. Procedure with named parameters
  print('\n--- System Log ---');
  logSystem(message: 'Server started successfully');
  logSystem(message: 'Low memory detected', level: 2);
}

// === PROCEDURES ===

// Procedure 1: without return, only print log
void logLogin(String username) {
  print('User "$username" has logged in.');
}

// Procedure 2: getting list, and modified
void addTask(List<String> list, String task) {
  list.add(task);
  print('Task "$task" added.');
}

// Procedure 3: usse named parameters
void logSystem({required String message, int level = 1}) {
  print('[Level $level] $message');
}
```

Maka outputnya :

```
--- User Logger ---
User "Caelus" has logged in.
Task "Write documentation" added.

--- Updated Task List ---
- Review PR
- Fix bug
- Write documentation

--- System Log ---
[Level 1] Server started successfully
[Level 2] Low memory detected
```

Dan bisa diakses kodenya di [1.5.3-1-ProcedureExample.dart](../../../code/1/1.5.3/1.5.3-1-ProcedureExample.dart)

## 1.6 OOP (Object Oriented Programming)

### 1.6.1 Dasar OOP (Class, Object)

OOP adalah paradigma pemrograman yang mengorganisasi kode berdasarkan objek, bukan sekadar fungsi dan logika. Objek ini membawa data dan perilaku dalam satu paket yang rapi, sehingga memudahkan pengembangan skala kecil maupun besar — termasuk di Flutter, yang memakai OOP di hampir semua komponennya.

- `Class` : Cetakan atau blueprint yang mendefinisikan karakteristik (data) dan perilaku (fungsi).
- `Object` : Wujud nyata (instance) yang dibuat berdasarkan Class.

Analogi Sederhana :

- `Class` : Sketsa arsitek untuk sebuah rumah.
- `Object` : Rumah-rumah nyata yang dibangun berdasarkan sketsa tersebut (Rumah A, Rumah B).

OOP ini selalu digunakan di Flutter. Setiap Widget (seperti Text, Container, Scaffold) adalah sebuah Object dari Class masing-masing.

Template dasar kode :

```dart
class ClassName {
  // Properties (Data)
  // Methods (Behaviour)
}

// Make Object
var objectName = ClassName();
```

Best Practices : Gunakan PascalCase untuk nama Class (`UserProfile`) dan camelCase untuk nama variabel/object (`userProfile`).

Contoh implementasi kode :

```dart
// 1. Class Definition (Blueprint)
class StartupProduct {
  // Properties: Data owned by the product
  String name = 'Untitled Product';
  double price = 0.0;

  // Method: Product behavior (e.g. showing details)
  void showDetails() {
    print('Product: $name | Price: \$$price');
  }
}

void main() {
  // 2. Object Creation (Realization)
  
  // Object 1: Cashier Application 
  var product1 = StartupProduct();
  product1.name = 'POS System';
  product1.price = 150.0;
  
  // Object 2: Attendance Application
  var product2 = StartupProduct();
  product2.name = 'HR Attendance';
  product2.price = 75.0;

  // Call each object's method
  product1.showDetails(); // Output: POS System...
  product2.showDetails(); // Output: HR Attendance...
}
```

Output kode :

```
Product: POS System | Price: $150.0
Product: HR Attendance | Price: $75.0
```

Dan kode bisa diakses di [1.6.1-1-BasicOOP.dart](../../../code/1/1.6.1/1.6.1-1-BasicOOP.dart)

### 1.6.2 Constructors & Properties 

Constructor adalah bagian penting dari OOP Dart/Flutter. Tujuannya adalah mengatur data awal sebuah objek, memastikan semua property memiliki nilai yang valid sejak objek diciptakan.

- Constructor : Fungsi spesial yang berjalan otomatis saat objek dibuat untuk menginisialisasi data.
- Named Constructor : Varian constructor untuk membuat objek dengan skenario berbeda (misal: membuat user dari data JSON vs data manual).
- Properties : Variabel dalam class. Di Flutter, properti seringkali bersifat final (tidak berubah setelah dibuat). 

Digunakan saat ingin memastikan sebuah objek memiliki data yang valid sejak detik pertama ia dibuat.

Perumpamaannya seperti ini :

- Constructor : Seperti mengisi formulir data diri saat pertama kali membuat kartu identitas.
- Named Construtor : Seperti paket khusus yang sudah disiapkan (Paket "Tamu", Paket "Premium", dan Paket "Default")
- Properties : Seperti kolom-kolom data di kartu identitas (Nama, Alamat, dan Tanggal Lahir)

Dasar brntuk Constructor : 

```dart
class Person {
  String name;

  Person(this.name); // Constructor
}
```

Dasar bentuk Named Constructor : 

```dart
class Person {
  String name;

  Person(this.name); 
  Person.unknown() : name = 'Unknown';
}
```

Dan bagian pada propertiws yang ini :

```dart
final String username;
```

Contoh implementasi kode : 

```dart
class User {
  // Properties
  // 'final' means the value acts as a constant after initialization (Immutable)
  final String username;
  final String email;
  final bool isPremium;

  // 1. Primary Constructor (Named Parameters)
  // This is the standard style for Flutter Widgets
  User({
    required this.username, 
    required this.email, 
    this.isPremium = false, // Default value
  });

  // 2. Named Constructor
  // Useful for creating an 'Anonymous' user quickly
  User.guest()
      : username = 'Guest',
        email = '',
        isPremium = false;

  // Method
  void login() {
    print('$username ($email) has logged in.');
  }
}

void main() {
  // Creating object with explicit parameters
  var founder = User(
    username: 'ceo_caelus', 
    email: 'caelus@startup.id', 
    isPremium: true
  );

  // Creating object using Named Constructor
  var guestUser = User.guest();

  founder.login();     // Output ceo_caelus...
  guestUser.login();   // Output: Guest...
}
```

Output kode : 

```
ceo_caelus (caelus@startup.id) has logged in.
Guest () has logged in.
```

Kode bisa di akses di [1.6.2-1-Constructors.dart](../../../code/1/1.6.2/1.6.2-1-Constructors.dart)

### 1.6.3 Encapsulation (Private Members, Getters, Setters)

Encapsulation adalah konsep menyembunyikan detail internal objek dari dunia luar. Hanya data yang "aman" yang boleh diakses atau diubah. Di Dart, tidak ada kata kunci private. Sebagai gantinya, tanda garis bawah (`_`) di awal nama variabel/fungsi menandakan bahwa itu bersifat private (hanya bisa diakses di file yang sama).

Analogi Sederhananya Dompet, orang lain boleh melihat warna dompet (Public), tapi tidak boleh langsung mengambil uang di dalamnya (Private). Mereka harus meminta pemiliknya untuk mengeluarkan uang (Method/Getter).

Sintaks dan Struktur kode :

```dart
class BankAccount {
  double _balance = 0; // Private (only access to this file)

  // Getter (Safe way to read private data)
  double get balance => _balance;

  // Setter (Safe way to change private data with validation)
  set deposit(double amount) {
    if (amount > 0) _balance += amount;
  }
}
```

Contoh kode implementasinya :

1.6.3-1-Encapsulation.dart

```dart
class EWallet {
  // Private property: cannot be accessed directly from outside this file
  double _balance = 0.0;

  // Public Method to modify private data safely
  void topUp(double amount) {
    if (amount <= 0) {
      print('Error: Amount must be positive');
      return;
    }
    _balance += amount;
    print('Top up success. New balance: $_balance');
  }

  // Public Method to read private data
  double checkBalance() {
    return _balance;
  }
}

void main() {
  var myWallet = EWallet();

  // myWallet._balance = 1000; // ERROR: The setter '_balance' isn't defined.
  
  myWallet.topUp(50000);
  print('Current Balance: ${myWallet.checkBalance()}');
}
```

Maka outputnya adalah :

```
Top up success. New balance: 50000.0
Current Balance: 50000.0
```

Dan kodenya bisa diakses di [1.6.3-1-Encapsulation.dart](../../../code/1/1.6.3/1.6.3-1-Encapsulation.dart)

### 1.6.4 Inheritance (Pewarisan)

Definisi inheritance di sini adalah Mekanisme di mana sebuah Class baru (Child/Subclass) mewarisi properti dan method dari Class yang sudah ada (Parent/Superclass). Bertujuan untuk Code Reusability (Gunakan kembali kode yang sama). Jangan menulis ulang logika yang sama untuk objek yang mirip.

Konsep Inheritance digunakan ketika memiliki beberapa objek yang berbagi karakteristik dasar yang sama. Contoh: Mobil dan Motor sama-sama Kendaraan. Admin dan Customer sama-sama User.

Sintaks Kata Kunci dari INheritance :

- `extends` : Menandakan pewarisan.
- `super` : Merujuk ke Parent Class.
- `@override` : Menimpa/mengganti perilaku method milik Parent.

Contoh implementasi kode : 

1.6.3-1-Inheritance.dart

```dart
// Parent Class
class Employee {
  String name;
  double salary;

  Employee(this.name, this.salary);

  void work() {
    print('$name is working standard hours.');
  }
}

// Child Class 1: Developer inherits from Employee
class Developer extends Employee {
  String programmingLanguage;

  // Pass name & salary to Parent (super)
  Developer(String name, double salary, this.programmingLanguage) 
      : super(name, salary);

  // Overriding: Changing the behavior of 'work'
  @override
  void work() {
    print('$name is coding in $programmingLanguage.');
  }
}

// Child Class 2: Manager inherits from Employee
class Manager extends Employee {
  Manager(String name, double salary) : super(name, salary);

  @override
  void work() {
    print('$name is managing the team.');
  }
}

void main() {
  var dev = Developer('March7th', 1000, 'Dart');
  var mgr = Manager('Caelus', 2000);

  dev.work(); 
  mgr.work();
}
```

Outputnya kita coba : 

```
March7th is coding in Dart.
Caelus is managing the team.
```

Aksses kodenya di [1.6.3-1-Inheritance.dart](../../../code/1/1.6.4/1.6.4-1-Inheritance.dart)

### 1.6.5 Abstract Class & Interface (Polymorphism)

Abstract Class merupakan Class yang "belum lengkap" dan tidak bisa dibuat objeknya secara langsung. Ia hanya berfungsi sebagai kerangka dasar bagi Class turunannya.

Sedangkan, untuk Polymorphism, yaitu Kemampuan objek untuk berubah bentuk. Sebuah variabel bertipe Parent bisa diisi oleh objek Child apa pun.

Biasanya digunakan saat ingin memaksakan standar tertentu. Contoh : Semua metode pembayaran (Ovo, GoPay) wajib punya fungsi pay(), tapi cara pay()-nya berbeda-beda. Perumpamaannya
seperti blueprint rumah dasar — ada aturan wajibnya, tapi belum bisa dijadikan rumah langsung.

Sintaks dan strukutrnya :

```dart
abstract class Template {
  void wajibDiisi(); // Abstract method (tanpa body)
  void opsiBebas() { ... } // Concrete method (dengan body)
}
```

Contoh implementasi kodenya :

1.6.5-1-Inheritance.dart

```dart
// Abstract Base Class
// Cannot be instantiated: var p = PaymentMethod() is Error.
abstract class PaymentMethod {
  void processPayment(double amount); // Abstract: Must be implemented by children
}

class CreditCard extends PaymentMethod {
  @override
  void processPayment(double amount) {
    print('Processing \$$amount via Visa/Mastercard...');
  }
}

class EWallet extends PaymentMethod {
  @override
  void processPayment(double amount) {
    print('Processing \$$amount via GoPay/Ovo...');
  }
}

void main() {
  // Polymorphism: List of 'PaymentMethod', but contains different implementations
  List<PaymentMethod> payments = [
    CreditCard(),
    EWallet()
  ];

  double cartTotal = 150.0;

  // The loop treats them all as 'PaymentMethod', 
  // but each executes its own logic.
  for (var method in payments) {
    method.processPayment(cartTotal);
  }
```

Dan outputnya nanti menjadi :

```
Processing $150.0 via Visa/Mastercard...
Processing $150.0 via GoPay/Ovo..
```

Dan untuk kodenya bisa diakses di [1.6.5-1-Inheritance.dart](../../../code/1/1.6.5/1.6.5-1-Inheritance.dart)

### 1.6.6 Interface (`implements`)

Interface adalah kontrak ketat. Jika sebuah Class meng-`implements` Class lain, ia wajib menulis ulang semua fungsi dan variabel dari Class tersebut. Berbeda dengan `extends` yang mewarisi logika, `implements` hanya mewarisi "nama tugas"-nya saja. Catatan: Di Dart, tidak ada keyword `interface`. Setiap Class secara implisit adalah interface.

Analogi Interface :

- Extends : Anak mewarisi bakat menyanyi ayah (bisa langsung menyanyi tanpa belajar).
- Implements : Karyawan menandatangani kontrak kerja (harus melakukan tugas A, B, C sesuai standar perusahaan, caranya terserah karyawan).

Sintaks dan strukur :

```dart
class Kontrak {
  void tugasA() {}
}

class Pekerja implements Kontrak {
  @override
  void tugasA() { 
    // Wajib ada isinya
  }
}
```

Contoh penerapan kode :

1.6.6-1-Interface.dart

```dart
// Interface (Kontrak)
abstract class Notifier {
  void sendNotification(String message); // Wajib diimplementasikan
}

// Class 1: Email Notifier
class EmailNotifier implements Notifier {
  @override
  void sendNotification(String message) {
    print("Email sent: $message");
  }
}

// Class 2: SMS Notifier
class SMSNotifier implements Notifier {
  @override
  void sendNotification(String message) {
    print("SMS sent: $message");
  }
}

void main() {
  Notifier email = EmailNotifier();
  Notifier sms = SMSNotifier();

  email.sendNotification("Welcome!");
  sms.sendNotification("Your code is 1234.");
}
```

Akan beroutput :

```
Email sent: Welcome!
SMS sent: Your code is 1234.
```

Kode bisa diakses di [1.6.6-1-Interface.dart](../../../code/1/1.6.6/1.6.6-1-Interface.dart)

### 1.6.7 Mixins (with)

Mixin adalah cara menambahkan kemampuan/fitur ke sebuah Class tanpa menggunakan pewarisan (inheritance). Ini sangat berguna untuk menghindari masalah pewarisan bertingkat yang rumit.

Saat ingin memberikan satu fitur spesifik ke banyak Class yang tidak berhubungan. Contoh: Fitur `Logger` (mencatat aktivitas) bisa dimiliki oleh `User`, `Product`, dan `Order`, padahal mereka tidak punya Parent yang sama.

Analoginya Stiker atau aksesoris. Smartphone bisa ditempel stiker, Laptop bisa ditempel stiker, Kulkas bisa ditempel stiker. Stiker itu adalah Mixin.

Sintaks dan struktur :

```dart
mixin FiturTambahan {
  void fitur() { ... }
}

class Utama with FiturTambahan { ... }
```

Contoh kode implementasinya :

1.6.7-1-Mixin.dart

```dart
// Mixin 1: Ability to log activities
mixin Loggable {
  void log(String message) {
    print('[LOG]: $message'); // Reusable logic
  }
}

// Mixin 2: Ability to validate data
mixin Validatable {
  bool isValid(String text) {
    return text.isNotEmpty;
  }
}

class User {
  String name;
  User(this.name);
}

// AdminUser extends User AND mixes in Loggable and Validatable
class AdminUser extends User with Loggable, Validatable {
  AdminUser(String name) : super(name);

  void deletePost() {
    if (isValid(name)) {
      log('Admin $name deleted a post.'); // Using Mixin method
    }
  }
}

void main() {
  var admin = AdminUser('Siti');
  admin.deletePost(); 
  // Output: [LOG]: Admin Siti deleted a post.
}
```

Dan outputnya :

```
[LOG]: Admin Siti deleted a post.
```

Dan seperti biasa kode bisa diakses di [1.6.7-1-Mixin.dart](../../../code/1/1.6.7/1.6.7-1-Mixin.dart)

