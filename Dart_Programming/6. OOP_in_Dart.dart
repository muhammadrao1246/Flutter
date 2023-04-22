

import 'dart:io';

void main() 
{
  //initializing object if ckass
  Student student_1 = new Student(name: "Noor Ullah", Class: "BSCS-6A", roll_no: 537);
  student_1.showData();
  print(student_1.getData());

  //we can store a record of number of students
  List<Student> students = List.empty(growable: true);
  String? name;
  String? Class;
  int? roll_no;

  for (var i = 0; i < 3; i++) 
  {
    print("\n\nStudent ${(i+1)} DATA");
    print("\tEnter Name:\t"); name = stdin.readLineSync(); 
    print("\tEnter Class:\t"); Class = stdin.readLineSync(); 
    print("\tEnter Roll No:\t"); roll_no = int.parse(stdin.readLineSync()!); 
    
    students.add(new Student(name: name, Class: Class, roll_no: roll_no));
  }

  print("\n\n------> All Students DATA <------");
  for (var student in students) {
    print(student.getData());
  }
}

//a simple class in dart
class Student {
  String? name;
  String? Class;
  int? roll_no;

//

//constructor in dart
  Student({String? name, String? Class, int? roll_no,})
  {
    //referring to the instantiated object attributes by "this" keyword
    this.name = name;
    this.Class = Class;
    this.roll_no = roll_no;
  }

//class methods

  void showData()
  {
    print("Student Data: ");
    print("\tName:\t${this.name}");
    print("\tClass:\t${this.Class}");
    print("\tRoll No:20-ARID-${this.roll_no}");
  }

  Map<String,Object?> getData()
  {
    return <String,Object?>{
      "name" : this.name,
      "class" : this.Class,
      "roll_no" : this.roll_no
    };
  }
}

