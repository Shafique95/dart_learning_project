void main() async {
  final courseSystem = CourseProcessSystem();
  courseSystem.enrole(() {
    courseSystem.courseStudyProgress(courseSystem.getCertificate);
  });
}

class CourseProcessSystem {
  bool payment = true;
  int progress = 85;
  void enrole(courseStudyProgress) {
    print("Your enrole is processing ............");
    Future.delayed(Duration(seconds: 10), () {
      if (payment) {
        print("Enrole complete");
        courseStudyProgress();
      } else {
        print("your enrolement failde");
      }
    });
  }

  void courseStudyProgress(getCertificate) {
    print("your course progress checking ............");
    Future.delayed(Duration(seconds: 5), () {
      print("Course complete");
      if (progress > 80) {
        print("you have successfully complete the course,your gpa $progress");
        getCertificate();
      }
    });
  }

  void getCertificate() {
    print("your certificate is printing .........");
    Future.delayed(Duration(seconds: 10), () {
      print("your certificate is printed");
    });
  }
}
