


import 'dart_interface_example.dart';

class Buss implements Vehicl{
  @override
  getSum() {
    // TODO: implement getSum
    throw UnimplementedError();
  }

}
//The class 'Vehicl' can't be 
//extended outside of its library because it's an interface class.
class EasyBike extends Vehicl{

}