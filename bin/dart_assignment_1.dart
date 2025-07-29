//-----------------A---------------------------

abstract class Role {
  void displayRole();
}

//-----------------B-----------------------------

class Person implements Role {
  final String  _name;
  final int _age;
  final String _address;

  Person(this._name, this._age, this._address);

  String get getName => _name;
  int get getAge => _age;
  String get getAddress => _address;

  @override
  void displayRole() {
    print("Role : Undefined");
  }
}

//--------------------C-----------------------------
class Student extends Person {
  String studentID;
  String grade;
  List<double> courseScores;

  Student(
    this.studentID,
    this.grade,
    this.courseScores,
    super.name,
    super.age,
    super.address,
  );

  @override
  void displayRole() {
    print("Role : Student");
  }

  double calculateAverageScore() {
    double total = 0;
    for (double score in courseScores) {
      total += score;
    }
    double average = total / courseScores.length;
    return average;
  }

  void showInfo(){
    print("Student Information : ");
    print("\n");

    displayRole();
    print("Name : ${super.getName}");
    print("Age : ${super.getAge}");
    print("Address : ${super.getAddress}");
    print("Average Score : ${calculateAverageScore()}");
  }
}

//--------------------D---------------------------

class Teacher extends Person {
  String teacherID;
  var coursesTaught = [];

  Teacher(
    this.teacherID,
    this.coursesTaught,
    super.name,
    super.age,
    super.address,
  );

  @override
  void displayRole() {
    print("Role : Teacher");
  }

  void displayCoursesTaught() {
    print("Courses Taught: ");

    for (String taught in coursesTaught) {
      print("- $taught");
    }
  }

  void showInfo(){
    print("Teacher Information : ");
    print("\n");
    displayRole();
    print("Name : ${super.getName}");
    print("Age : ${super.getAge}");
    print("Address : ${super.getAddress}");
    displayCoursesTaught();
  }
}

//--------------------E---------------------------

//main function
void main() {
  Student student1 = Student(
    "s101",
    "A+",
    [80.0, 85.5, 65.3, 90.2],
    "Ajijul Islam",
    25,
    "Bogura",
  );
  Teacher teacher1 = Teacher(
    "t101",
    ["Math", "English", "Bangla"],
    "Taufiq ur Rahman",
    35,
    "Dhaka",
  );

  student1.showInfo();
  print("\n");
  teacher1.showInfo();

  // student1.displayRole();

}
