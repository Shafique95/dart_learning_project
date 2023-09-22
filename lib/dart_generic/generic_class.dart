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
  Common common = Common(67);
  common.getDouble();
  BanglaClass<String> banglaClass = BanglaClass("4", "9");

  Common<int> c = ChildOfBangla(4, 4, 8);
  print(c.runtimeType);
}

class Common<T> {
  final T? t;
  Common(this.t);

  T? getDouble() {
    print("we are doing the work$t");
    return t;
  }
}

class BanglaClass<T> extends Common<T> {
  final T? x;
  BanglaClass(this.x, m) : super(m);
}

class ChildOfBangla<T> extends BanglaClass<T> {
  final T? m;
  ChildOfBangla(this.m, T? name, T? age) : super(name, age) {
    print("supper body");
  }
}
