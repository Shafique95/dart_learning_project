import 'dart_base_class_exmaple.dart';

//The type 'EasyBike' must be 'base',
// 'final' or 'sealed' because the supertype 'Vehicl' is 'base'.
final class EasyBike extends Vehicl {}

//The class 'Vehicl' can't be implemented outside of its library
// because it's a base class.
final class Bicycle implements Vehicl {
  @override
  startCar() {
    // TODO: implement startCar
    throw UnimplementedError();
  }
}
