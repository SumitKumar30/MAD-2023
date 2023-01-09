void main() {
  // statically typed language;
  int x = 100;
  print(x);
  print(x.runtimeType);

  double a = 100.20;
  print("Value of a is: ${a}");
  print("Vlaue of a is: " + a.toString());

  var z = 55; // type inferencing
  print(z.runtimeType);

  var b;
  b = "Sumit";
  print(b.runtimeType);

  b = true;
  print(b.runtimeType);

  dynamic c = 56;
  print(c.runtimeType);

  c = 'Amit';
  print(c.runtimeType);

  dynamic s;
  print(s);

  print(s.runtimeType);

  int? r;

  print(r);

  double f = 20.345;
  int h = f.toInt();
  int o = int.parse('A',radix: 16);
  print("Value of o is: $o");
}
