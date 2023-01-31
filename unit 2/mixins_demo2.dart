abstract class Employee {
  void login();
  void logout();
  void registerUser();
  void updateUser();
}

class Doctor extends Employee {
  @override
  void login() {
    print('logging in');
  }

  @override
  void logout() {
    print('logging out..');
  }

  @override
  void registerUser() {
    print('user registered!');
  }

  @override
  void updateUser() {
    print('user updated!!!');
  }
}

class Coder extends Employee with PunchTime {
  @override
  void login() {
    print('logging in');
  }

  @override
  void logout() {
    print('logging out..');
  }

  @override
  void registerUser() {
    print('user registered!');
  }

  @override
  void updateUser() {
    print('user updated!!!');
  }
}

mixin PunchTime {
  void punchInTime() => print('Registering the punch in time...');
  void punhOutTime() => print('Registering the punch out time...');
}

void main() {
  Coder c = Coder();
  c.login();
  c.punchInTime();
  c.punhOutTime();
  c.logout();
}
