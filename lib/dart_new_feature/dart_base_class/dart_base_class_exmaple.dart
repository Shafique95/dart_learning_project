base class Vehicl {

  Vehicl() {
    print("call super");
  }
  startCar() {}
}

final class MotorBike implements Vehicl {
  String milage;
  MotorBike(this.milage);

  @override
  startCar() {
    // TODO: implement startCar
    throw UnimplementedError();
  }
}

final class EasycCicle extends Vehicl {
  EasycCicle() {
    print("call sub class");
  }
}

void main() {
  final mtBike = MotorBike("23");
  print(mtBike.milage);

  final mtBikec = EasycCicle();
}

// class MotorBike2 implements Vehicl {}
