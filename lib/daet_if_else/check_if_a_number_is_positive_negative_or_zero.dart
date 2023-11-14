import 'dart:math';

void main() {
  if (isPrime(21)) {
    print("the number is prime ");
  } else {
    print("the number is not prime");
  }
  // print(getPositiveNegativeOrZero(-34));

  // print(getPositiveNegativeOrZero(34));

  // print(getPositiveNegativeOrZero(0));
  // for (int i = 0; i < 23; i++) {
  //   if (i % 2 != 0 && i >= 2) {
  //     print("the number $i is prinme number ");
  //   }
  //   ;
  // }
}

String getPositiveNegativeOrZero(int anyNumber) {
  if (anyNumber < 0) {
    return "$anyNumber is a negative  number";
  } else if (anyNumber > 0) {
    return "$anyNumber is possitive number";
  } else {
    return "this is zero";
  }
}

bool isPrime(int anyNumber) {
  if (anyNumber < 2) {
    return false;
  }
  if (anyNumber % 2 == 0) {
    return false;
  }
  if (anyNumber == 2) {
    return true;
  }
  for (int i = 3; i <= sqrt(anyNumber).ceil(); i += 2) {
    if (anyNumber % i == 0) {
      return false;
    }
  }
  return true;
}
