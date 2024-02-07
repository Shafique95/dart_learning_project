import '../dart_function/practice_dart_function.dart';

void main() {
  print("programm start");
  var sum = calculateSume(3, 5);
  if (sum.isNotEmpty) {
    print("your todays balance is $sum");
  } else {
    print("please enter always positive value ");
  }
  printOrder(item: "Widget");
  printDetails("Bob", age: 30); // Output: Name: Bob, Age: 30
printDetails("Charlie",age: 56, location: "Cityville"); // Output: Name: Charlie, Location: Cityville
}
