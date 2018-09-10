import 'library/example/main.dart';
class App {
  String name;
  String toString() {
    return name;
  }

  void changeName(String name) {
    this.name = Sub().subChangeName(name);
  }
}
