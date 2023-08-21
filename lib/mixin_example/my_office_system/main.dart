import 'employees/call_center.dart';
import 'employees/clarck.dart';
import 'employees/hr.dart';
import 'employees/office_builder.dart';

void main(List<String> args) {
  CallCenter cl = CallCenter("Shafiqul Islam");
  cl.work();
  cl.callCenterDo();
  var clr = Clarck("Abdul Kuddos");
  clr.work();
  clr.clarckDuty();
  var hr = Hr("Abir Hossain");
  hr.work();
  hr.hrDuty();
  var ofb = OfficeBuilder("Mitul Sir");
  ofb.work();
  var rtVal =
      ofb.myBosDuty<String>("mmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm");
  var x = ofb.bossDutyInRajshai("Shafique");
  print(x);
}
