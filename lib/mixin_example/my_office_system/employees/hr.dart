import '../mixins/hr_mixin.dart';
import 'employee.dart';

class Hr extends Employee with HrMixin {
  Hr(String hrName) : super(hrName);
  void hrDuty() {
    print(" Hr. perform daily admin work of our office");
  }
}
