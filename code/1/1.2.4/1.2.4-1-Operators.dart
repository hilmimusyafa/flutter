void main() {
  // Case Study: Logic for a startup's e-commerce 'Buy' button
  
  //--- Aritmatika ---
  int itemQuantity = 3;
  double itemPrice = 150.0;
  double shippingFee = 10.0;
  
  double subTotal = itemQuantity * itemPrice;
  double totalCost = subTotal + shippingFee;
  
  print('Subtotal: $subTotal');
  print('Total Cost: $totalCost');

  //--- Perbandingan ---
  int stock = 5;
  bool isStockAvailable = stock >= itemQuantity; // 5 >= 3 (true)
  
  double userBalance = 500.0;
  bool hasEnoughBalance = userBalance >= totalCost; // 500.0 >= 460.0 (true)

  print('Is stock available? $isStockAvailable');
  print('Has enough balance? $hasEnoughBalance');

  //--- Logika ---
  // The 'Buy' button should only be enabled if...
  // 1. Stock is available AND 2. User has enough balance
  bool isBuyButtonEnabled = isStockAvailable && hasEnoughBalance;
  
  print('---');
  print('Is Buy Button Enabled? $isBuyButtonEnabled');
  
  // Example of '||' (OR)
  bool isPremiumUser = false;
  bool hasVoucher = true;
  bool canGetDiscount = isPremiumUser || hasVoucher;
  print('Can get discount? $canGetDiscount'); // true
}