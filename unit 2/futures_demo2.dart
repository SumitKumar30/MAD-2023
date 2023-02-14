Future<String> getName() async {
  return 'John Doe';
}

Future<String> getPhoneNumber() =>
    Future.delayed(Duration(seconds: 2), () => '999-999-9999');

Future<String> getHomeAddress() async => 'New Delhi';

Future<String> fetchUserOrder() =>
    Future.delayed(const Duration(seconds: 1), () => 'Cuppuccino');

Future fetchPizzaOrder() => Future.delayed(Duration(seconds: 2),
    () => throw Exception('Pizza is not available currently!'));

// Future Chaining --> calling a future inside a future
Future<String> getFullName() =>
    Future.delayed(Duration(seconds: 1), () => 'Sumit Kumar');

Future<int> claculateNameLength(String value) =>
    Future.delayed(Duration(seconds: 2), () => value.length);

void main() async {
  final name = await getName();
  print(name);
  print(await getPhoneNumber());
  print(await getHomeAddress());

  fetchUserOrder().then((order) => print('Order is ready: ${order}'));
  fetchPizzaOrder()
      .catchError((error) => print(error))
      .whenComplete(() => print('This will execute!'));

  final len = await claculateNameLength(await getFullName());
  print(len);
}
