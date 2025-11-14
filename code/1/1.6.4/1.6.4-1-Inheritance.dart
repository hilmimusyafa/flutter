// Parent Class
class Employee {
  String name;
  double salary;

  Employee(this.name, this.salary);

  void work() {
    print('$name is working standard hours.');
  }
}

// Child Class 1: Developer inherits from Employee
class Developer extends Employee {
  String programmingLanguage;

  // Pass name & salary to Parent (super)
  Developer(String name, double salary, this.programmingLanguage) 
      : super(name, salary);

  // Overriding: Changing the behavior of 'work'
  @override
  void work() {
    print('$name is coding in $programmingLanguage.');
  }
}

// Child Class 2: Manager inherits from Employee
class Manager extends Employee {
  Manager(String name, double salary) : super(name, salary);

  @override
  void work() {
    print('$name is managing the team.');
  }
}

void main() {
  var dev = Developer('March7th', 1000, 'Dart');
  var mgr = Manager('Caelus', 2000);

  dev.work(); // March7th is coding in Dart.
  mgr.work(); // Caelus is managing the team.
}