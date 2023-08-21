import 'dart_extension/dart_extension.dart';
import 'encapsulation_example/student_info.dart';
import 'enum _example/apply_enum.dart';
import 'enum _example/enum_example.dart';
import 'mixin_example/use_mixin.dart';
import 'poly_morphism/developer/developer.dart';
import 'poly_morphism/manager/manager.dart';

void main() {
  // StudetntInfo st=StudetntInfo();
  // st.setAge(40);
  // print(st.name??"name not kfount");
  // print(st.age??"age not fount");
  // print(st.className??"class not fount ");
  // Manager mn=Manager();
  // mn.employeeSalary();
  // Developer dv=Developer();
  // dv.employeeSalary();
  // StudentDetails stf=StudentDetails("Shafiqul Islam",12,SevenDays.Saturda);
  //  print(stf.name);
  //   print(stf.age);
  // print(stf.svDay.name);

  fetchData();
  var cr = Car();
  cr.carRun();
  String numberString = "42";
  int parsedInt = numberString.parseInt();
  print(parsedInt.runtimeType); // Output: 42
  print(ActiveAccount.InSevenDays);
}

enum ActiveAccount {
  InSevenDays("7"),
  ForFiftyDays("15"),
  ForTweentyDays("20");

  const ActiveAccount(this.name);
  final String name;
}

fetchData() {
  Future.delayed(Duration(seconds: 8), () => print('ok'));
}
