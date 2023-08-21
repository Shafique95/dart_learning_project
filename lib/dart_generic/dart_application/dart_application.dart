import '../impl/loacl_cash_imple.dart';

main() {
  var lc = LocalCashImpl<String>("save it to local db");
  lc.obj;
  print(lc.obj);
}
