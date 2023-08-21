import '../mixins/call_center_mixin.dart';
import 'employee.dart';

class CallCenter extends Employee with CallCenerMixin {
  CallCenter(String name) : super(name);

  void callCenterDo() {
    print("$name center employee receive call and answer all question");
  }
}
