void main(){
  // Example 2: Calculating price
  double basePrice = 100.0;
  bool isPremiumMember = false;

  double finalPrice = isPremiumMember ? (basePrice * 0.8) : basePrice;
  print('Final price: $finalPrice');
}