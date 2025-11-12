void main() {
  // Case Study: Generating a welcome message and order summary

  final String userName = 'Budi';
  final int itemsInCart = 3;
  final double orderTotal = 85.50;

  // Using $variable and ${expression}
  String welcomeMessage = 'Welcome back, $userName!';
  String orderSummary = 'You have $itemsInCart items in your cart. Total: \$${orderTotal.toStringAsFixed(2)}';

  print(welcomeMessage);
  print(orderSummary);
}