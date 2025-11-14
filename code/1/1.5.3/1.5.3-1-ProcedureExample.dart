void main() {
  // 1. Procedure sederhana
  print('--- User Logger ---');
  logLogin('Caelus'); // memanggil procedure

  // 2. Procedure untuk memodifikasi List
  List<String> tasks = ['Review PR', 'Fix bug'];
  addTask(tasks, 'Write documentation');

  print('\n--- Updated Task List ---');
  tasks.forEach((t) => print('- $t'));

  // 3. Procedure dengan named parameters
  print('\n--- System Log ---');
  logSystem(message: 'Server started successfully');
  logSystem(message: 'Low memory detected', level: 2);
}

// === PROCEDURES ===

// Procedure 1: tanpa return, hanya mencetak log
void logLogin(String username) {
  print('User "$username" has logged in.');
}

// Procedure 2: menerima list, memodifikasinya
void addTask(List<String> list, String task) {
  list.add(task);
  print('Task "$task" added.');
}

// Procedure 3: menggunakan named parameters
void logSystem({required String message, int level = 1}) {
  print('[Level $level] $message');
}
