void main() {
  // Case Study: Handling optional user profile data
  
  // Non-nullable: Must be initialized.
  String username = 'march7th_boyfriend';
  
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