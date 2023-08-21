import '../mixins/office_builder_mixin.dart';
import 'employee.dart';

class OfficeBuilder extends Employee with OfficeBuilderMixin {
  OfficeBuilder(String boss) : super(boss);
  T myBosDuty<T>(T myType) {
    print("my define type is $myType");
    print("$name caring our office all time ");
    return myType;
  }

  T bossDutyInRajshai<T>(T val) {
    print("$val take care rajshahi office all time he do all this by his");
    
    return val;
  }
  
}
