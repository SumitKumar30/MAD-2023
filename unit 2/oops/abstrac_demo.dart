void main() {
  Triangle t = Triangle(dim1: 10, dim2: 20);
  t.area();
  t.perimeter();

  Circle c = Circle(rad: 10);
  c.area();
  c.perimeter();
  c.printName();
}

abstract class Round {
  void volume();
}

abstract class Shape {
  void area();
  void perimeter();

  void printName() {
    print("This is Shape class");
  }
}

class Triangle extends Shape {
  int? dim1;
  int? dim2;

  Triangle({required this.dim1, required this.dim2});

  @override
  void area() {
    print("Area of triangle is: ${0.5 * (dim1! * dim2!)}");
  }

  @override
  void perimeter() {
    print("Perimeter of triangle is: ${dim1! + dim2!}");
  }
}

class Circle implements Shape, Round {
  int? rad;

  Circle({required this.rad});

  @override
  void area() {
    print('Area of circle is ${3.14 * (rad! * rad!)}');
  }

  @override
  void perimeter() {
    print("Perimeter of circle is: ${2 * 3.14 * rad!}");
  }

  @override
  void printName() {
    print("This is Circle class");
  }

  @override
  void volume() {
    print("Circle volume method");
  }
}
