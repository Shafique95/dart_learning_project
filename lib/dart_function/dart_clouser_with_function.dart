main() {
  print("programm start");
  FunctionClouserExample fc = FunctionClouserExample();
  // fc.onClick(() => 23);
  var tempVal = fc.click();
  print(tempVal);
  var clSum = CalculateSum(12, 34);
  var rahimsTk = CalculateSum(45, 34);
  var totalTk = clSum.getSum();
  var rahimTotalTk = rahimsTk.getSum();
  print("rahims tak $rahimTotalTk");
  print(totalTk);
  List<Employee> empList = [];
  empList.add(Employee("Shafiqul Islam", 30, 2));
  empList.add(Employee("Jahid", 34, 4));
  empList.add(Employee("Sukanta", 54, 5));
  FindEmployee fni = FindEmployee(empList);
  print(fni.getEmployee(5));
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

class CalculateSum {
  final int firstNumber;
  final int secondNumber;
  CalculateSum(this.firstNumber, this.secondNumber);
  int getSum() {
    return firstNumber + secondNumber;
  }
}

class FindEmployee {
  final List<Employee> employeeList;
  FindEmployee(this.employeeList);
  String getEmployee(int id) {
    var name = employeeList.where((element) => element.id == id).toList();
    return name[0].name;
  }
}

class Employee {
  final String name;
  final int age;
  final int id;
  Employee(this.name, this.age, this.id);
}

