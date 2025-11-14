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