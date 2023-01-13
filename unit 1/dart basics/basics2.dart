import 'dart:io';

void main(List<String> args) {
  int sum = 0;
  // for (int i = 0; i < args.length; i++) {
  //   sum = sum + int.parse(args[i]);
  // }
  // print("sum of given command line arguments is ${sum}");

  String name = "sumit kumar";

  String name2 = '   sumit    kumar    ';

  // string association

  String val = "How's "
      "your "
      "day?";
  print(val);

  String val2 = """
  It 
  was
  a
  great!
  day
  today""";
  print(val2);

  // methods and properties of String class
  print(name.startsWith("sumit"));
  print(name.endsWith("kumar"));
  print(name.contains("john"));
  print(name.padLeft(name.length + 4));
  String address = "Sector 23, NCU, Gurugram, Haryana, India";
  print(address.split(','));
  print(name.substring(2, 6));
  print(name2.trim());
  print(name.toUpperCase());

  print(name.length);

  print(name.isEmpty);

  print(name.runtimeType.runtimeType.runtimeType);

  //stdout.write(address);

  stdout.writeln(address);
  print("Enter your name again:");
  String? name3 = stdin.readLineSync();
  print('entered name is $name3');

  print("Enter your age: ");
  String? value = stdin.readLineSync();
  int age = int.parse(value.toString());
  print('entered age is $age');
  int? x;
  print(x);
}
