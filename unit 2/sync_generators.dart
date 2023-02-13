void main() {
  // get a single value
  print(sum(10, 20));
  // get multiple values eagerly
  List<int> list = generateNumbersNormally(10);
  //print(list.last);
  print(list.first);

  // get multiple values lazily
  final itr = generateNumbersLazily(10);
  print(itr.last);
  //print(itr.first);
}

// Generate a single value synchronously
int sum(int a, int b) => a + b;

// Generate multiple values synchronously
List<int> generateNumbersNormally(int n) {
  List<int> list = [];
  for (var i = 1; i <= n; i++) {
    print('i --> $i');
    list.add(i);
  }
  return list;
}

// Genrate multiple values synchronously -- Lazy loading
Iterable<int> generateNumbersLazily(int n) sync* {
  // generateNegativeNumbers(10);

  for (var i = 1; i <= n; i++) {
    print('i --> $i');
    yield i;
  }
  yield* generateNegativeNumbers(10);
  print('Done!');
}

// Generate multiple values synchronously -- lazy loading
Iterable<int> generateNegativeNumbers(int n) sync* {
  for (var i = 1; i <= n; i++) {
    print('-i --> ${-i}');
    yield -i;
  }
}
