import '../mixins/clarck_mixin.dart';
import 'employee.dart';

class Clarck extends Employee with ClarckMixin {
  Clarck(String name) : super(name);
  void clarckDo() {
    print("$name clean the office daily and gives us foood and water everyday");
  }
}
