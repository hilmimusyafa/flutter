void main() {
  // Case Study: Generating a welcome message and order summary
  final String userName = 'Hilmi';
  final int itemsInCart = 3;
  final double orderTotal = 85.50;

  // Example: Normalizing a user input (e.g., search query)
  String rawSearchQuery = '  Flutter tutorial for beginners   ';
  
  // Clean up the input
  String normalizedQuery = rawSearchQuery
      .trim() // Remove leading/trailing whitespace
      .toLowerCase() // Convert to lowercase
      .replaceAll('beginners', 'experts'); // Replace text

  print('Raw query: "$rawSearchQuery"');
  print('Normalized query: "$normalizedQuery"');
  print('Does query contain "flutter"? ${normalizedQuery.contains('flutter')}');
}