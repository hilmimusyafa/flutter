void main() {
  List<String> products = [
    'Laptop', 
    'Mouse', 
    'Keyboard (Out of Stock)', 
    'Monitor', 
    'Webcam'
  ];

  print('\n--- Using break ---');
  // Goal: Find the first 'Out of Stock' item and stop
  for (int i = 0; i < products.length; i++) {
    if (products[i].contains('(Out of Stock)')) {
      print('Found Out of Stock item: ${products[i]}. Stopping process.');
      break; // Exit the loop entirely
    }
    print('Checking product: ${products[i]}');
  }
}