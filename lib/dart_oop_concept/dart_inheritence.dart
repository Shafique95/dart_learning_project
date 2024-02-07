void main() {
  var dog = Dog("red", "Pushy");
  dog.toString();
}

class Animal {
  String? name;
  Animal(this.name);
}


class Dog extends Animal {
  String? color;
  Dog(this.color, String? name) : super(name);
  @override
  String toString() {
    // TODO: implement toString
    print(color);
    return super.toString();
  }
}
