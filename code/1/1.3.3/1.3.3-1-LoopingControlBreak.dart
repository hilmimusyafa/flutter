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