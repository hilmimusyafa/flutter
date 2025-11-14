// Abstract Base Class
// Cannot be instantiated: var p = PaymentMethod() is Error.
abstract class PaymentMethod {
  void processPayment(double amount); // Abstract: Must be implemented by children
}

class CreditCard extends PaymentMethod {
  @override
  void processPayment(double amount) {
    print('Processing \$$amount via Visa/Mastercard...');
  }
}

class EWallet extends PaymentMethod {
  @override
  void processPayment(double amount) {
    print('Processing \$$amount via GoPay/Ovo...');
  }
}

void main() {
  // Polymorphism: List of 'PaymentMethod', but contains different implementations
  List<PaymentMethod> payments = [
    CreditCard(),
    EWallet()
  ];

  double cartTotal = 150.0;

  // The loop treats them all as 'PaymentMethod', 
  // but each executes its own logic.
  for (var method in payments) {
    method.processPayment(cartTotal);
  }
}