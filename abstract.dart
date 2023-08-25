void main() {
  //抽象不能建立實體
  // var aa =new People();

  var t = new Teacher();
  t.printName();
  var s = new Student();
  s.printName();
}

abstract class People {
  static const String name = 'mei';
  void printName() {
    print(name);
  }
  // void abstractmethod();
}

class Teacher extends People {}

//Dart 沒有 interface關鍵字 ，但每個class都可以作為介面被實現
class Student implements People {
  int age = 5;
  void printName() {
    print('I am a student');
  }
}
