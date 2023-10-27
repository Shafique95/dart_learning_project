main() {
  print("programm start");
  FunctionClouserExample fc = FunctionClouserExample();
  // fc.onClick(() => 23);
  var tempVal = fc.click();
  print(tempVal);
}

class FunctionClouserExample {
  int Function()? _calculateSume;
  onClick(int Function() calculateSume) {
    _calculateSume = calculateSume;
  }

  int? click() {
    if (_calculateSume != null) {
      var x = _calculateSume?.call();
      return x;
    }
    return -1;
  }
}
