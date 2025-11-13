void main() {
  int maxRetries = 3;
  int currentRetry = 0;
  bool isConnected = false;

  print('Attempting to connect to payment gateway...');

  do {
    currentRetry++;
    print('Attempt $currentRetry: Connecting...');

    // Simulate a failed connection
    if (currentRetry < maxRetries) {
      print('Connection failed. Retrying...');
    } else {
      // Simulate a successful connection on the last try
      isConnected = true;
      print('Connection successful!');
    }
  } while (!isConnected && currentRetry < maxRetries);

  if (!isConnected) {
    print('Failed to connect after $maxRetries attempts.');
  }
}