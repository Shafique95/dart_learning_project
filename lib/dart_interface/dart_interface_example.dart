main() {
  List<EmployeeImpl> empList = [
    EmployeeImpl("Jahid", 12, 1),
    EmployeeImpl("Shafiqul Islam", 12, 2),
    EmployeeImpl("Sukanta saha", 12, 3)
  ];
  FindEmployee<EmployeeImpl> fe = FindEmployee(empList);
  print(fe.FindEmployeeById(3).name);
  var record = (named: 'v', 'y', named2: 'x', 'z');
print(record.$1);                               // prints y
print(record.$2); 
}

abstract interface class Employee {
  String get name;
  int get id;
}

class EmployeeImpl implements Employee {
  @override
  int get id => empId;
  @override
  String get name => empName;
  final String empName;
  final int age;
  final int empId;
  EmployeeImpl(this.empName, this.age, this.empId);
}

class FindEmployee<T extends Employee> {
  final List<T> empList;
  FindEmployee(this.empList);
  T FindEmployeeById(int id) {
    var empName = empList.firstWhere((element) => element.id == id);
    return empName;
  }
}
