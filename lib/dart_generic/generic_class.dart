import 'dart:js_interop';

class Slot<T> {
  insert(T shape) {}
  @override
  String toString() {
    return "user type $T";
  }
}

class Data<T> {
  T data;
  Data(this.data);
}

class GenericClassDemmo<T> {
  T? _t;
  //GenericClassDemmo(T t) : _t = t;
  setValu(T t) => this._t = t;
  get t => _t;
}

///generic methid example
T commonFunction<T, U>(T country, U district) {
  return country;
}

/// Restricting the type of generic
class UserType<T extends num> {
// we will able to pass only int and double because T extends num. num contain int and double
  T nameOfType;
  UserType(this.nameOfType);
}

class Circle {}

class Square {}

class Rectangle {}

class Triangle {}

abstract class CalculateSum<T extends num> {
  T calculateSum<T>(List<T> listVal);
}


void main(List<String> args) {
  commonFunction(45, 6);
  commonFunction<String, int>("Bangladesh", 65);
  var cl = Slot<Circle>();
  cl.insert(Circle());
  print(cl.toString());
  GenericClassDemmo<String> gnm = GenericClassDemmo<String>();
  gnm.setValu("Shafiqul Islam");
  print(gnm.t);
}
