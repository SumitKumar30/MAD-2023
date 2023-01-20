import 'dart:io';

void main() {
  String name = "Amit";
  name = "Sumit";
  print(name);
  StringBuffer sb = StringBuffer();
  sb.write("Hello, How are your?");
  sb.write(" How's your day today?");
  print(sb);

  // const & final
  const int a = 100;
  //a = 200;

  final int x;
  final StringBuffer sb2 = StringBuffer();

  //sb2 = new StringBuffer();

  print('Enter two numbers:');
  int no1 = int.parse(stdin.readLineSync().toString());
  int no2 = int.parse(stdin.readLineSync().toString());

  int sum = no1 + no2;

  print(sum);
  
  int result = add(no1, 20);
  print('Addition of two no.:$result');
}

int add(int x, int y) {
  return x + y;
}
