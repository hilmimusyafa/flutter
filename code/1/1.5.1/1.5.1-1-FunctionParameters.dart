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