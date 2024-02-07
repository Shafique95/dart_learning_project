class Person {
  late String _name;
  late String _age;
  Person(String name, String age)
      : _age = age,
        _name = name;
  String get name => _name;
  String get age => _age;
}
