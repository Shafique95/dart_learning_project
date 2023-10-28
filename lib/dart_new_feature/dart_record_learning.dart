main() {
  /// access record value
  var x = myRecord.$1;
  var y = myRecord.$2;
  print("record 1 : $x record2 : $y ");
  print(swap((3, 4)));
  print(swaping(("Shafiqul Islam", "Jahidul Hasan")));
  print(checkRecordValue(returnMultipleValue()));
}

/// record declearation
final myRecord = (12, 13);
(int, int) swap((int, int) record) {
  var (a, b) = record;
  return (b, a);
}

(Object, Object) swaping((Object, Object) record) {
  var (a, b) = record;
  return (b, a);
}

({int id, String name}) record = (id: 42, name: "Hello");

/// returning multiple value using record or tuple
(int a, int b) returnMultipleValue() => (1, 2);

/// Make a function to check A record value containing 1, 2
String checkRecordValue((int, int) record) {
  var tempRecord = record;
  var checkValue = switch (tempRecord) {
    /// Matching On Records and Using Guard Clauses(here when is guard key word)
    (int a, int b) when a == 1 && b == 2 => "One and two",// here when is Guard Clauses
    (_, _) => "nothing value get"// using wildcard  instead of defauld
  };
  return checkValue;
}
