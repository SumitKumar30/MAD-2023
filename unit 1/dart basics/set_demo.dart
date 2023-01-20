// Set demo
void main() {
  // Set<int> set1 = Set();
  // set1.add(10);
  // set1.add(20);
  // set1.add(30);
  // set1.add(40);
  // set1.add(10);

  Set set1 = <int>{50, 500, 400, 250, 80, 70};
  Set set2 = <int>{10, 20, 30, 50, 80, 90};
  Set set3 = <int>{60, 70, 100, 120, 130, 200};

  print(set1.union(set2));
  print(set2.intersection(set3));
  print(set1.difference(set3));
}
