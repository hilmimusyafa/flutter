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

  founder.login(); 
  guestUser.login();