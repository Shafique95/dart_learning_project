abstract class CarModel {
  String? carName;
  String? carColor;
  int carSpeed = 0;
  CarModel(this.carName, this.carColor);
  carStart() {
    carSpeed = 20;
    print(carSpeed);
  }

  carStop() {
    carSpeed = 0;
     print(carSpeed);
  }

  carExcelarator() {
    carSpeed += 30;
     print(carSpeed);
  }
}
