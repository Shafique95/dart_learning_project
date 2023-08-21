void main() async {
  displaySum(sum) {
    print("printing summ ......... wait$sum");
  }

  final a = A();
  final b = B();
  final courseSystem = CourseProcessSystem();
  courseSystem.enrole(() {
    courseSystem.courseStudyProgress(courseSystem.getCertificate);
  });
//   b.calculatSum(3, 5, displaySum);
//   a.setValue = myFunc;

//   a.value = "Shafiqul";

//   a.callSetValue();
// }

// myFunc(String? v) {
//   print("called with $v");
}

class A {
  void Function(String? value)? setValue;
  String? value;
  void callSetValue() {
    setValue?.call(value);
  }
}

class B {
  calculatSum(int num1, int num2, Function(int sum) callBack) {
    print("code running stop");

    if (num1 < 0 || num2 < 0) {
      return;
    }
    print("code running");

    int sum = num1 + num2;

    callBack(sum);
  }
}

class CourseProcessSystem {
  bool payment = true;
  int progress = 85;
  void enrole(courseStudyProgress) {
    // print("enrole");
    print("Your enrole is processing ............");
    Future.delayed(Duration(seconds: 10), () {
      if (payment) {
        courseStudyProgress();
      } else {
        print("your enrolement failde");
      }
      print("Enrole complete");
      // throw " failed enrollment";
    });
  }

  void courseStudyProgress(getCertificate) {
    // print("course process");
     print("your course progress checking ............");
    Future.delayed(Duration(seconds: 5), () {
      if (progress > 80) {
        print("you have successfully complete the course,your gpa $progress");
        getCertificate();
      }
    });
  }

  void getCertificate() {
    // print("get certificate");
     print("your certificate is printing .........");
    Future.delayed(Duration(seconds: 10), () {
      print("your certificate is printed");
    });
  }
}
