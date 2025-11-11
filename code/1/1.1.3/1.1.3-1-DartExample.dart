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