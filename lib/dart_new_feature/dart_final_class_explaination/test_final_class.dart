import 'final_class_example.dart';

void main(){

}
// The class 'Vehicl' can't be extended outside 
//of its library because it's a final 
class MotorCar extends Vehicl{

}
//The class 'Vehicl' can't be implemented outside 
//of its library because it's a final 
class Buss implements Vehicl{
  @override
  carMoveMent(int metre) {
    // TODO: implement carMoveMent
    throw UnimplementedError();
  }

}