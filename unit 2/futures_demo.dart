void main(List<String> arguments) {
  print('Start');

  Future(() => 1).then(print);
  Future(() => Future(() => 2)).then(print);

  //  Future.delayed(const Duration(seconds: 1), () => 11).then(print);
  //  Future.delayed(const Duration(seconds: 1), () => Future(() => 12)).then(print);

  Future.value(3).then(print);
  Future.value(Future(() => 4)).then(print);  // Future(() => 4)

  Future.sync(() => 5).then(print);   // Future.value(5)
  Future.sync(() => Future(() => 6)).then(print);  // Future(() => 6)

  Future.microtask(() => 7).then(print);
  Future.microtask(() => Future(() => 8)).then(print); // Future(() => 8) -- placed on microtask queue

  Future(() => 9).then(print);
  Future(() => Future(() => 10)).then(print);

  print('End');
}