class Student implements Comparable<Student> {
  String name;
  int age;
  Student(this.name, this.age);
  @override
  int compareTo(Student other) {
    // TODO: implement compareTo
    return this.name.compareTo(other.name);
  }
}

void main(List<String> args) {
  List<Student> studentList = [
    Student("Abir", 23),
    Student("Jahid", 45),
    Student("Ikramul", 10),
    Student("Hasan", 78),
    Student("Hasan", 78),
    Student("Badal", 28)
  ];

  studentList.sort();
  for (var element in studentList) {
    print(element.name);
    print(element.age);
  }
}
