import './emp.dart';

void main() {
  // print("Hello");
  //Employee emp = Employee();
  // emp.id = 1001;
  // emp.name = "Amit";
  // emp.salary = 900000.00;
  //emp.getInput(1002, "Paul", 50000.00);
  // print(emp._id);
  // print(emp.name);
  // print(emp.salary);
  Employee emp2 = Employee.initialInput(20001, "Sumit", 89000.50);
  Employee emp3 = Employee.requiredInput(id: 5001, name: "Amit", salary: 5000.00);
  emp3.printInput();
  print(emp2);
}
