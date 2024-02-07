List<int> calculateSume(int x, int y) {
  List<int> sumValue = [];
  sumValue.add(x);
  sumValue.add(y);
  if (x > 0 && y > 0) {
    x + y - 2;
    sendToMyAccount();
    sendToClientAccount();
    sumValue.add(x + y);
    return sumValue;
  }
  return [];
}

sendToMyAccount() {
  print("send to my account ");
}

sendToClientAccount() {
  print("send to client account");
}
void printOrder({String? item, int? quantity, double? price}) {
  print("Order: $quantity $item(s) for a total of \$$price");
}

void printDetails(String name, {int? age, String? location}) {
  print("Name: $name");
  if (age != null) {
    print("Age: $age");
  }
  if (location != null) {
    print("Location: $location");
  }
}
// Usage

