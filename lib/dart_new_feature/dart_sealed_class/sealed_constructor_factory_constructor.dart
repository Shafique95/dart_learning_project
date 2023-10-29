void main() {
  try {
    Animal an = Animal.crateAnimalById("goat","12 a");
    print(an.id);
    print(an.runtimeType);
    if (an is Goat) {
      print(an.name);
      print(an.id);
    } 
    if (an is Animal) {
      print("Animal id ${an.id}");
    }
  } catch (e) {
    print(e);
  }
  print("after catch error");
}

sealed class Animal {
  String id;
  Animal(this.id) {
    print("called sealed class constructor");
  }
  factory Animal.crateAnimalById(String type, String id) {
    print("check id $id");
    if (type == "cow") {
      return Cow(id);
    } else if (type == "cat") {
    } else if (type == "goat") {
      return Goat("Shafiqul Islam", id);
    }
    throw UnsupportedError("unknown type");
  }
}

class Cow extends Animal {
  Cow(super.id) {
    print("called cow constructor");
  }
  testCatFunction() {
    print("I am cat , mew");
  }
}

class Cat extends Animal {
  Cat(super.id) {
    print("cat constructor");
    testCatFunction();
  }
  testCatFunction() {
    print("I am cat , mew");
  }
}

class Goat extends Animal {
  String name;
  Goat(this.name, String id) : super(id);
}
