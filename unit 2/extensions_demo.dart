void main() {
  int num = int.parse('42');
  
  print('42'.getParse());

  print(35.add10());

  String name = "suMIitKUMar";
  print(name.FirstLetterCapital());
}

extension ParseString on String {
  int getParse() {
    return int.parse(this);
  }
}

extension AddNumber on int {
  int add10() => this + 10;
}

extension CamelCase on String {
  String FirstLetterCapital() =>
      "${this[0].toUpperCase() + this.substring(1).toLowerCase()}";
}


// class A {
//   A._();  --> private constructor
// }

// class B extends A {}
