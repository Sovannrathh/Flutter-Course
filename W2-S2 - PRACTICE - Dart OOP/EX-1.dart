enum Skill { 
  FLUTTER, 
  DART, 
  OTHER 
}

// Employee class
class Employee {
  // Private attributes
  final String _name;
  final double _baseSalary;
  final String _position;
  final List<Skill> _skills;
  final int _yearsOfExperience;
  
  // Constructor
  Employee(
      this._name, this._baseSalary, this._position, this._yearsOfExperience, this._skills);

  // Getter methods 
  String get name => _name;
  double get baseSalary => _baseSalary;
  String get position => _position;
  List<Skill> get skills => _skills;
  int get yearsOfExperience => _yearsOfExperience;

  void printDetails() {
    print('Employee: $_name, Base Salary: \$$_baseSalary, Position: $_position, Skills: $_skills, Experience: $_yearsOfExperience years');
  }

  // Named constructor for mobile developers
  Employee.mobileDev(String name, double baseSalary, int yearsOfExperience)
      : _name = name,
        _baseSalary = baseSalary,
        _position = 'Mobile Developer',
        _yearsOfExperience = yearsOfExperience,
        _skills = [Skill.FLUTTER, Skill.DART]; 
}

// Address class
class Address {
  final String _street;
  final String _city;
  final String _zipCode;

  Address(this._street, this._city, this._zipCode);

  // Getter methods 
  String get street => _street;
  String get city => _city;
  String get zipCode => _zipCode;
}

void main() {
  var emp1 = Employee.mobileDev('rath', 40000, 5);
  emp1.printDetails();

  // Create another employee using the standard constructor
  var emp2 = Employee('Ronan', 45000, 'Backend Developer', 8, [Skill.OTHER]);
  emp2.printDetails();
}
