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