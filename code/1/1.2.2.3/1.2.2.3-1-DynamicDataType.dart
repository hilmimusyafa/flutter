void main() {
  dynamic dangerousVar = 'This is a String';
  
  print(dangerousVar.toUpperCase()); // Works, because it is a String

  dangerousVar = 123; // Changed type to int
  
  // The line below will CRASH the program at runtime
  // because an 'int' does not have a 'toUpperCase' method.
  // The compiler will not warn you about this!
  
  print(dangerousVar.toUpperCase()); // Uncomment this to see the crash
  
  print('Finished without crash... for now.');
}