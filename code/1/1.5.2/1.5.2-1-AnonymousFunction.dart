void main() {
  List<double> monthlyRevenues = [500.0, 1200.0, 3000.0];

  // 1. Anonymous Function (Block style)
  // Used when logic is complex (more than 1 line)
  print('--- Monthly Report ---');
  monthlyRevenues.forEach((revenue) {
    double tax = revenue * 0.1;
    print('Revenue: $revenue (Tax: $tax)');
  });

  // 2. Arrow Syntax (=>)
  // Used for concise, single-line logic.
  // Case: Converting all values to "thousands" format (3.0k)
  // map() returns an Iterable, so we add toList()
  List<String> formatted = monthlyRevenues.map((r) => '${r/1000}k').toList();
  
  print('\n--- Formatted Data ---');
  print(formatted); // Output: [0.5k, 1.2k, 3.0k]
}