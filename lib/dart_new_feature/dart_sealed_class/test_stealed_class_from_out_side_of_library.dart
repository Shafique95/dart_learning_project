import 'dart_sealed_class example.dart';

void main() {
  Human hmn1 = Human1("called human constructor using human1 bject");
  Human hmn2 = Human2("called human usng human 2");
  Human hmn3 = Human3("call human 3");
  print(hmn1.checkConstructor);
}

String getHuman(Human hmn) {
  var human = switch (hmn) {
    Human1() => Human1("human1"),
    Human2() => Human2("human2"),
    Human3() => Human3("human3"),
  };
  return human.checkConstructor;
}
// The class 'Human' can't be extended, implemented,
// or mixed in outside of its library because it's a sealed class.
// A sealed class can not be extends,implement,mixin outsite of it Library 
//means outsite of it file 
/// testing sealed class outside of its file 
/// tested failed
// sealed class Human4 extends Animal{

// }