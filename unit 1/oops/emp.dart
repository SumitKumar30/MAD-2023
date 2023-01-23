// naming convention should follow camel casing
class Employee {
  // instance variables
  int? _id;
  String? _name;
  double? _salary;
  String? _email;
  String? _address;
  String? _phone;

  void getInput(int id, String name, double salary) {
    this._id = id;
    this._name = name;
    this._salary = salary;
  }

  void printInput() {
    print("Id: $_id, Name: $_name, Salary: $_salary, Email: $_email, Phone: $_phone, Address: $_address");
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
