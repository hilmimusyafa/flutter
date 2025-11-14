class EWallet {
  // Private property: cannot be accessed directly from outside this file
  double _balance = 0.0;

  // Public Method to modify private data safely
  void topUp(double amount) {
    if (amount <= 0) {
      print('Error: Amount must be positive');
      return;
    }
    _balance += amount;
    print('Top up success. New balance: $_balance');
  }

  // Public Method to read private data
  double checkBalance() {
    return _balance;
  }
}

void main() {
  var myWallet = EWallet();

  // myWallet._balance = 1000; // ERROR: The setter '_balance' isn't defined.
  
  myWallet.topUp(50000);
  print('Current Balance: ${myWallet.checkBalance()}');
}