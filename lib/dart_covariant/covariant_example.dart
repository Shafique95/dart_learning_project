main() {
  List<Animal> objList = [];
  objList.add(Cat());
  objList.add(Cow());
  objList.add(Animal());
  // for (Animal item in objList) {
  //   item.getSound();
  // }
  objList.forEach((element) {
    element.getSound();
  });
}

abstract interface class CommonTask {
  getIt() {}
}

class Animal {
  void getSound() {
    print("animal can do sound");
  }
}

class Cat extends Animal {
  @override
  void getSound() {
    print("Meow");
  }
}

class Cow extends Animal {
  @override
  void getSound() {
    print("hamba");
  }
}
