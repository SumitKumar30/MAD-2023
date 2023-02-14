Stream<int> getNumberGenerator(int n) async* {
  for (var i = 1; i <= n; i++) {
    print('i --> $i');
    yield i;
  }
}

void main()  {
  // final val =  getNumberGenerator(10);
  // print(val.last);
  getNumberGenerator(10).listen((event) {print(event);});
}
