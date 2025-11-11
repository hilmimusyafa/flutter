void main() {
  // 1. Declare a variable 'startupName' and assign it a String value.
  // 'String' is the data type. 'startupName' is the variable name.
  String startupName = 'AplikasiTugasKuliah.id';

  // 2. Print the value of the variable.
  print(startupName);

  // 3. Use 'string interpolation' ($) to combine text and variables.
  // This is the preferred way to build strings in Dart.
  print('Welcome to $startupName!');

  // 4. This is the older/less clean way (avoid this if possible):
  // print('Welcome to ' + startupName + '!');
}