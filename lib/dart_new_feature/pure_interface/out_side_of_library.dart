import 'pure_interface_example.dart';

class Circle implements Shape{
  @override
  double calculateArea() {
    // TODO: implement calculateArea
    throw UnimplementedError();
  }

}

abstract interface class Square extends Shape{
  @override
  double calculateArea() {
    // TODO: implement calculateArea
    throw UnimplementedError();
  }

}