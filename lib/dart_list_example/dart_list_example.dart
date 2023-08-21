import 'dart:convert';

void main() {
  String jsonString = '''[
  {"name":"Shafiqul Islam","age":25,"country":"Bangladesh"},
  {"name":"Mir Hossain Kabir","age":45,"country":"Bangladesh"},
  {"name":"Jahid Hasa","age":67,"country":"Banglades"}
]''';
  final List<dynamic> listOfEmployee = jsonDecode(jsonString);
  print(listOfEmployee);
  List<Map<String, dynamic>> shafiq = List.from(listOfEmployee.where((element) {
    return element is Map && element["name"] == "Shafiqul Islam";
  }));
  print(shafiq);

  const jsonArray = '''
  [{"text": "foo", "value": 1, "status": true},
   {"text": "bar", "value": 2, "status": false}]
''';
  final List<dynamic> dynamicList = jsonDecode(jsonArray);
  final List<Map<String, dynamic>> fooData =
      List.from(dynamicList.where((x) => x is Map && x['text'] == 'foo'));
  print(fooData);
}
