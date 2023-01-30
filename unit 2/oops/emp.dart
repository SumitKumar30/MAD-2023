// naming convention should follow camel casing
class Employee {
  // instance variables
  int? _id;
  String? _name;

  double? _salary;
  String? _email;
  String? _address;
  String? _phone;

  // getters and setters
  get name => this._name;

  set name(value) => this._name = value;

  int? get id => this._id;

  set id(int? value) => this._id = value;

  get salary => this._salary;

  set salary(value) => this._salary = value;

  get email => this._email;

  set email(value) => this._email = value;

  get address => this._address;

  set address(value) => this._address = value;

  get phone => this._phone;

  set phone(value) => this._phone = value;

  void getInput(int id, String name, double salary) {
    this._id = id;
    this._name = name;
    this._salary = salary;
  }

  // void setSalary(double salary) {
  //   this._salary = salary;
  // }

  // double? getSalary() {
  //   return this._salary;
  // }

  void printInput() {
    print(
        "Id: $_id, Name: $_name, Salary: $_salary, Email: $_email, Phone: $_phone, Address: $_address");
  }

  // default constuctor
  Employee() {
    this._id = 1005;
    this._name = "John";
    this._salary = 50000.00;
    print("Call to default construct!");
  }

  // parametrized constructor
  // Named constructor
  /* Employee.initialInput(int id, String name, double salary) {
    this._id = id;
    this._name = name;
    this._salary = salary;
  }*/

  // Shorthand Named Constructor
  Employee.initialInput(this._id, this._name, this._salary);

  // Named Constructor with required feilds
  Employee.requiredInput(
      {required int id,
      required String name,
      required double salary,
      String email = "john@ncu.edu",
      String? phone,
      String? address}) {
    this._id = id;
    this._name = name;
    this._salary = salary;
    this._address = address;
    this._phone = phone;
    this._email = email;
  }
}
