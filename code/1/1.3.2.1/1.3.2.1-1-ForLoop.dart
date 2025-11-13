void main() {
  List<double> itemPrices = [50.0, 120.50, 30.25];
  double total = 0.0;

  // Use a for loop to iterate based on index
  for (int i = 0; i < itemPrices.length; i++) {
    total = total + itemPrices[i];
    print('Added ${itemPrices[i]}, new total: $total');
  }

  print('---');
  print('Final cart total: $total');
}