// list demo
void main() {
  List<int> l = [10, 20, 30, 40];
  print(l.runtimeType);
  print(l.length);
  print(l[3]);
  l.add(50);
  l.addAll([60, 70, 80]);
  print(l.first);
  print(l.isEmpty);
  print(l.last);
  l.contains(80);
  print(l.elementAt(5));
  print(l.lastIndexOf(60));

  for (int x in l) {
    print(x);
  }
}
