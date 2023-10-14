void main() {
  final temp = SingelTonePattern.getObject();
  temp.checkFunction();
  final temp2 = ImmutablePoint.createObject(4, 8);
  final temp3 = ImmutablePoint.createObject(7, 8);
  print(identical(temp2, temp3));
  try {
  final temp4 = ValidateExample.validatePerson("name", 9);
} on Exception catch (e) {
  // TODO
}
}

class SingelTonePattern {
  /*In Dart, you can implement the Singleton design pattern to
  ensure that a class has only one instance and provide a global
  point of access to that instance. 
  To create a Singleton in Dart, you can use a combination of 
  a private constructor and a static method to access the single instance. 
  Here's an example of how to implement the Singleton pattern in Dart:*/
  SingelTonePattern._();
  static SingelTonePattern? _obj;
  factory SingelTonePattern.getObject() {
    if (_obj == null) {
      _obj = SingelTonePattern._();
    }
    return _obj!;
  }
  void checkFunction() {
    print("This function call from private class");
  }
}

class ImmutablePoint {
  final int x;
  final int y;
  ImmutablePoint._(this.x, this.y);
  factory ImmutablePoint.createObject(int m, int n) {
    return ImmutablePoint._(m, n);
  }
}

///Scenario : Utility Class
///Description: You have a utility class with only static methods,
/// and you want to prevent instances from being created.
class Calculation {
  Calculation._();
  static int sum(int x, int y) {
    return x + y;
  }

  static int substract(int x, int y) => x - y;
}

/// we can do private a function if we want to validate a something
class ValidateExample {
  final String name;
  final int age;
  ValidateExample._(this.name, this.age);
  factory ValidateExample.validatePerson(String name, int age) {
    if (age < 0) {
      throw ArgumentError("Enter valid age");
    }
    return ValidateExample._(name, age);
  }
}
