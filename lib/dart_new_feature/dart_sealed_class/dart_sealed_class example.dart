void main() {
  Animal an = Cat();
  var animalName = getAnimalName(an);
  print(animalName);
}

String getAnimalName(Animal an) {
  var x = switch (an) {
    Dog() => "this is a dog",
    Rat() => "this is a Rat",
    Cat() => "that is a cat ",
    Snack() => "this is a snack",
    GrassHopper() => "that is a grass hopper",
    _ => ""
  };
  return x;
}

String getDevName(String name) {
  var y = switch (name) {
    "Shafiqul" => "shafiqul islam",
    "Shafiqul" => "shafiqul islam",
    _ => "sdfslkfsjl"
  };
  return y;
}

// sealed means close securely
// Abstract classes can't be instantiated.
// that means we can not make object of sealed or abstract class
// Try creating an instance of a concrete subtype.
//sealed class is always implicitly abstract.
// we can use sealed class instead of abstract class
//Use sealed to opt in to exhaustiveness checking on a family of subtypes.
//All subclasses must be declared in the same library (the same file).
//With sealed modifier, the class cannot be extended or
// implemented outside its own library.
// if we add a new subclass we have to ensuer to use it to switch expression
// A sealed class can not be extends,implement,mixin outsite of it Library
//means outsite of it file
///summary
// Dart's sealed modifier is suitable if you want to define a class whose list 
// of subtypes are known from the beginning and cannot be changed later.
// The list of subtypes must be declared in the same library (file). 
// Sealed classes are implicitly abstract and cannot be instantiated. 
// However, you can add some constructors, including factory constructors.
// If you create a switch block where the checked object type is a sealed class,
// the compiler can check whether the type is already exhaustively matched by the switch cases
sealed class Animal {}

class Cat implements Animal {}

class Dog implements Animal {}

class Rat implements Animal {}

class Snack extends Animal {}

class GrassHopper extends Animal {}

// we can create constructor and factory constructor in sealed class
sealed class Human {
  String checkConstructor;
  Human(this.checkConstructor) {
    print("called constructor $checkConstructor");
  }
}

class Human1 extends Human {
  Human1(String name) : super(name);
  //or Human(supe.checkConstructor);
}

class Human2 extends Human {
  Human2(String name) : super(name);
}

class Human3 extends Human {
  Human3(String name) : super(name);
}
/**
Dart's sealed modifier is suitable if you want to define a class whose list 
of subtypes are known from the beginning and cannot be changed later.
The list of subtypes must be declared in the same library (file). 
Sealed classes are implicitly abstract and cannot be instantiated. 
However, you can add some constructors, including factory constructors.
If you create a switch block where the checked object type is a sealed class,
the compiler can check whether the type is already exhaustively matched by the switch cases
 */

/// we can create custom sealed class
abstract class SealedBase {
  factory SealedBase.circle(double radius) = Circle;
  factory SealedBase.rectangle(double width, double height) = Rectangle;
}

class Circle implements SealedBase {
  final double radius;
  Circle(this.radius);
}

class Rectangle implements SealedBase {
  final double width;
  final double height;
  Rectangle(this.width, this.height);
}
