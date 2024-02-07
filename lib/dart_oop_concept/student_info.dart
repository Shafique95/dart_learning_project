class StudentInfo {
  final String name;
  final int studentAge;
  final int studentClass;
  final List<int> studentResult;

  StudentInfo(
      {required this.name,
      required this.studentAge,
      required this.studentClass,
      required this.studentResult});
  double calculateResult() {
    var cgp = 0;
    for (var item in studentResult) {
      cgp += item;
    }
    var calculateCgpa = cgp / studentResult.length;
    print("St name:${this.name}");
    print("St age:${this.studentAge}");
    print("St cl:${calculateCgpa}");
    return calculateCgpa;
  }
}

void main() {
  List<Map<String, dynamic>> studentList = [
    {
      "name": "Liam",
      "age": 20,
      "score": 9,
      "grades": [3, 4, 5, 6]
    },
    {
      "name": "Olivia",
      "age": 22,
      "score": 8,
      "grades": [4, 5, 6, 7]
    },
    {
      "name": "Noah",
      "age": 21,
      "score": 7,
      "grades": [5, 6, 7, 8]
    },
    {
      "name": "Emma",
      "age": 23,
      "score": 10,
      "grades": [4, 5, 6, 7]
    },
    {
      "name": "Ava",
      "age": 19,
      "score": 8,
      "grades": [3, 5, 6, 7]
    },
    {
      "name": "Sophia",
      "age": 24,
      "score": 9,
      "grades": [3, 4, 6, 7]
    },
    {
      "name": "Jackson",
      "age": 20,
      "score": 7,
      "grades": [4, 5, 6, 8]
    },
    {
      "name": "Aiden",
      "age": 21,
      "score": 8,
      "grades": [3, 5, 7, 8]
    },
    {
      "name": "Lucas",
      "age": 22,
      "score": 9,
      "grades": [4, 5, 6, 7]
    },
    {
      "name": "Isabella",
      "age": 19,
      "score": 10,
      "grades": [5, 6, 7, 8]
    },
    {
      "name": "Mia",
      "age": 25,
      "score": 9,
      "grades": [3, 4, 5, 6]
    },
    {
      "name": "Logan",
      "age": 22,
      "score": 8,
      "grades": [4, 5, 6, 7]
    },
    {
      "name": "Amelia",
      "age": 21,
      "score": 7,
      "grades": [5, 6, 7, 8]
    },
    {
      "name": "Ethan",
      "age": 23,
      "score": 10,
      "grades": [4, 5, 6, 7]
    },
    {
      "name": "Harper",
      "age": 19,
      "score": 8,
      "grades": [3, 5, 6, 7]
    },
    {
      "name": "Lily",
      "age": 24,
      "score": 9,
      "grades": [3, 4, 6, 7]
    },
    {
      "name": "Carter",
      "age": 20,
      "score": 7,
      "grades": [4, 5, 6, 8]
    },
    {
      "name": "James",
      "age": 21,
      "score": 8,
      "grades": [3, 5, 7, 8]
    },
    {
      "name": "Lily",
      "age": 22,
      "score": 9,
      "grades": [4, 5, 6, 7]
    },
    {
      "name": "Aiden",
      "age": 19,
      "score": 10,
      "grades": [5, 6, 7, 8]
    },
    {
      "name": "Elijah",
      "age": 20,
      "score": 9,
      "grades": [3, 4, 5, 6]
    },
    {
      "name": "Abigail",
      "age": 22,
      "score": 8,
      "grades": [4, 5, 6, 7]
    },
    {
      "name": "Michael",
      "age": 21,
      "score": 7,
      "grades": [5, 6, 7, 8]
    },
    {
      "name": "Sofia",
      "age": 23,
      "score": 10,
      "grades": [4, 5, 6, 7]
    },
    {
      "name": "Evelyn",
      "age": 19,
      "score": 8,
      "grades": [3, 5, 6, 7]
    },
    {
      "name": "Daniel",
      "age": 24,
      "score": 9,
      "grades": [3, 4, 6, 7]
    },
    {
      "name": "Carter",
      "age": 20,
      "score": 7,
      "grades": [4, 5, 6, 8]
    },
    {
      "name": "Grace",
      "age": 21,
      "score": 8,
      "grades": [3, 5, 7, 8]
    },
    {
      "name": "Henry",
      "age": 22,
      "score": 9,
      "grades": [4, 5, 6, 7]
    },
    {
      "name": "Scarlett",
      "age": 19,
      "score": 10,
      "grades": [5, 6, 7, 8]
    },
    {
      "name": "Emily",
      "age": 20,
      "score": 9,
      "grades": [3, 4, 5, 6]
    },
    {
      "name": "Mia",
      "age": 22,
      "score": 8,
      "grades": [4, 5, 6, 7]
    },
    {
      "name": "Oliver",
      "age": 21,
      "score": 7,
      "grades": [5, 6, 7, 8]
    },
    {
      "name": "Ella",
      "age": 23,
      "score": 10,
      "grades": [4, 5, 6, 7]
    },
    {
      "name": "William",
      "age": 19,
      "score": 8,
      "grades": [3, 5, 6, 7]
    },
    {
      "name": "Lucy",
      "age": 24,
      "score": 9,
      "grades": [3, 4, 6, 7]
    },
    {
      "name": "John",
      "age": 20,
      "score": 7,
      "grades": [4, 5, 6, 8]
    },
    {
      "name": "Avery",
      "age": 21,
      "score": 8,
      "grades": [3, 5, 7, 8]
    },
    {
      "name": "Daniel",
      "age": 22,
      "score": 9,
      "grades": [4, 5, 6, 7]
    },
    {
      "name": "Charlotte",
      "age": 19,
      "score": 10,
      "grades": [5, 6, 7, 8]
    },
    {
      "name": "Liam",
      "age": 25,
      "score": 9,
      "grades": [3, 4, 5, 6]
    },
    {
      "name": "Isabella",
      "age": 22,
      "score": 8,
      "grades": [4, 5, 6, 7]
    },
    {
      "name": "Noah",
      "age": 21,
      "score": 7,
      "grades": [5, 6, 7, 8]
    },
  ];

  List<StudentInfo> studentInfoList = [
    StudentInfo(name: "Shafiqul Islam", studentAge: 28, studentClass: 8, studentResult: [4,4,3,4]),
    StudentInfo(name: "Ruhil Islam", studentAge: 28, studentClass: 8, studentResult: [4,4,3,4]),
    StudentInfo(name: "Jaki Islam", studentAge: 28, studentClass: 8, studentResult: [4,4,3,4]),
    StudentInfo(name: "Kuddos Islam", studentAge: 28, studentClass: 8, studentResult: [4,4,3,4]),
    StudentInfo(name: "Ibramim Islam", studentAge: 28, studentClass: 8, studentResult: [4,4,3,4]),
    StudentInfo(name: "sani Islam", studentAge: 28, studentClass: 8, studentResult: [4,4,3,4]),
    StudentInfo(name: "Kabir Islam", studentAge: 28, studentClass: 8, studentResult: [4,4,3,4]),
    StudentInfo(name: "Sukant Islam", studentAge: 28, studentClass: 8, studentResult: [4,4,3,4]),
  ];
  // var robin = StudentInfo(
  //     name: "Robin",
  //     studentAge: 20,
  //     studentClass: 9,
  //     studentResult: [3, 4, 5, 6]);
  // robin.calculateResult();
  var listOfStudentObject = studentList.map((eachStudent) {
    return StudentInfo(
        name: eachStudent["name"].toString(),
        studentAge: eachStudent["age"],
        studentClass: eachStudent["score"],
        studentResult: eachStudent["grades"]);
  }).toList();
  print("count student ${listOfStudentObject.length}");
  for (var item in studentInfoList) {
    print("name ${item.name}");
  }
}
