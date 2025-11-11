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
  return 'user-budi-001';
}