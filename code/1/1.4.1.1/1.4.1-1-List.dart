void main() {
  // Case Study: Managing a list of investors for a startup pitch
  
  // 1. Declaration
  // Explicitly typed list of Strings
  final List<String> investors = ['Alpha Capital', 'Beta Ventures'];
  
  print('Initial Investors: $investors');

  // 2. Adding Data
  investors.add('Gamma Angel Fund');
  print('After adding one: $investors');

  // 3. Accessing Data (Index starts at 0)
  String firstInvestor = investors[0];
  print('Lead Investor: $firstInvestor');

  // 4. Removing Data
  investors.remove('Beta Ventures'); // Investor pulled out
  print('Current Investors: $investors');
  
  // 5. Updating Data
  investors[0] = 'Alpha Capital Global'; // Name change
  print('Updated List: $investors');
}