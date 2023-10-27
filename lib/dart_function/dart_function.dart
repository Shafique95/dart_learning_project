import 'dart:math';

main() {
  print("hellow dart");
  // aFunctionWithOptionalParam(18);
  aFunctionWithOptionalParam(18, 34, 67);
  var cName = UsingCascadeOperator(
    (index, cardId) {
      print(index);
      print(cardId);
      return 10;
    },
  );
  print(cName.tapOnLefticon.call(12, "eeeee"));
  cName
    ..name = "Bangladesh"
    ..age = "sdfksklfjsjf";
  print(cName.age);
  print(cName.getRendomNumber());
  print(multipli(2, 4));
}

void aFunctionWithOptionalParam(int firstNumber,
    [int? secondNumber = 13, int? thirdNumber = 12]) {
  print(firstNumber);
  print(secondNumber);
  print(thirdNumber);
}

class UsingCascadeOperator {
  String name = "Shafiql Islam";
  String age = 23.toString();
  TapOnLefticon tapOnLefticon;
  UsingCascadeOperator(this.tapOnLefticon);
  // make a function That will return rendom number
  int getRendomNumber() {
    return Random().nextInt(10);
  }
}

typedef TapOnLefticon = int Function(int index, String cardId);
Function multipli =  (int x, int y) {
  return x * y;
};
