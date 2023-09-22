void main() {
  print("ok");
  List<int> myList = List.generate(5, (val) {
    print('index$val');
    return val * 2;
  });
  print("myList$myList");
  var sum = 0;
  for (var singleValue in myList) {
    sum += singleValue;
    print(singleValue);
  }
  print("sum is $sum");
}
