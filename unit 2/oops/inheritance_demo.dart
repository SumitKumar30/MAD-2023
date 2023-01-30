void main() {
  Car c1 = Car(color: 'Blue', model: '2023');
  c1.showColor('Grey');
  c1.showModel('2021');
}

class Vehicle {
  String? color;
  String? model;

  // Vehicle(String color, String model) {
  //   this.color = color;
  //   this.model = model;
  // }

  // shorthand constructor with optional named parameters
  Vehicle({required this.color, required this.model});

  // shorthand constructor with optional positional parameters
  //Vehicle.getVehicle(this.color, [this.model]);

  void showColor(String color) {
    print("Vehicle color is $color");
  }

  void showModel(String model) {
    print("Vehicle model is $model");
  }
}

class Car extends Vehicle {
  Car({required super.color, required super.model});

  void showColor(String color) {
    print('Car Color is $color');
  }

  void showModel(String model) {
    //print('Car Model is $model');
    super.showModel(model);
  }
}

