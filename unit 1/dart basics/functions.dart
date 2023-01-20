void main() {
  // int res = add(10, 20); // function invocation
  // print(res);
  // print(add(10, 20));
  Map<String, Function> result = math(40); // returns the list of functoins

  //print(result(10, 20));
  // print(result[0](10, 20));
  // print(result[1](10, 20));
  // print(result[2](10, 20));
  // print(result[3](10, 20));

  print(result["delhi"]!(
      10, 20)); // ! tells that the value for respective cannot be null

  print(result["mumbai"]!(10, 20));
  //print(result["chennai"](10, 20));
  print(result["bangalore"]!(10, 20));
  Function? div = result['chennai'];
  if (div != null) print(div(10, 20));
}

// ! --> when you're sure that vallue is not null
// ? --> when you're not sure & allows null value

// int add(int x, int y) {
//   return x + y;
// }

// List<Function> math() {
//   // anonymous functions
//   Function add = (int x, int y) {
//     return x + y;
//   };

//   Function sub = (int x, int y) {
//     return x - y;
//   };

//   Function mul = (int x, int y) {
//     return x * y;
//   };

//   Function div = (int x, int y) {
//     return x / y;
//   };
//   // returning a function
//   //return add;

//   // returning list of functions
//   return [add, sub, mul, div];
// }

Map<String, Function> math(int a) {
  // local variable
  int b = 30;
  // anonymous functions
  Function add = (int x, int y) {
    return x + y + a + b;
  };

  Function sub = (int x, int y) {
    return x - y - a - b;
  };

  Function mul = (int x, int y) {
    return x * y * a * b;
  };

  Function div = (int x, int y) {
    return (x / y)/a;
  };
  // returning a function
  //return add;

  // returning list of functions
  return {"delhi": add, "mumbai": sub, "Bangalore": mul, "Chennai": div};
}
