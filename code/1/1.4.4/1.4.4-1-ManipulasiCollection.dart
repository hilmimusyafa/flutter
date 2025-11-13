void main() {
  // Case Study: Processing raw transaction data for a dashboard
  
  List<Map<String, dynamic>> transactions = [
    {'id': 't1', 'amount': 100.0, 'status': 'success'},
    {'id': 't2', 'amount': 50.0, 'status': 'pending'},
    {'id': 't3', 'amount': 200.0, 'status': 'success'},
    {'id': 't4', 'amount': 0.0, 'status': 'failed'},
  ];

  print('--- Original Data ---');
  print(transactions);

  // 1. Filtering (.where)
  // Case: We only want to calculate revenue from 'success' transactions
  var successfulTransactions = transactions.where((tx) {
    return tx['status'] == 'success';
  }).toList();

  print('\n--- Filtered Data (Success only) ---');
  print(successfulTransactions);

  // 2. Transformation (.map)
  // Case: We need a list of just the transaction IDs to display simply
  List<String> transactionIds = transactions.map((tx) {
    return 'ID: ${tx['id']}';
  }).toList();

  print('\n--- Transformed Data (IDs only) ---');
  print(transactionIds);

  // 3. Chaining (Advanced)
  // Case: Get amounts of successful transactions only
  // Steps: Filter success -> Map to amount -> Convert to List
  List<double> successAmounts = transactions
      .where((tx) => tx['status'] == 'success') // Filter
      .map((tx) => tx['amount'] as double)      // Transform
      .toList();                                // Finalize

  print('\n--- Chained Operation (Success Amounts) ---');
  print(successAmounts);
}