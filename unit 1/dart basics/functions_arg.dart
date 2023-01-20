// function as arguments
void main() {
  loop(10, square);
  loop(10, cube);
  loop(10, evenOrOdd);
}

void loop(int n, Function fn) {
  for (int i = 1; i <= n; i++) {
    print(fn(i));
  }
}

int square(int num) {
  return num * num;
}

int cube(int num) {
  return num * num * num;
}

String evenOrOdd(int num) {
  return num % 2 == 0 ? "Even $num" : "Odd $num";
}
