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