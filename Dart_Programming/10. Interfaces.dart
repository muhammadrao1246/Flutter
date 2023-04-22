
void main(List<String> args) 
{
  child(fatherName: null , motherName: "Tax");
  
}

/*In dart there is no keyword interface but you can use class or abstract class to declare an interface. 
All classes implicitly define an interface. 
Mostly abstract class is used to declare an interface. */

//USED TO ACHIEVE ABSTRACTION
//only contains signature and cannot be instatiagted
//must imlemenyed by extending class all the interfaces in it


//SUGGESTED TO USE ABSTRACT CLASSES FOR INTERFACES


abstract class mother {
  

  void myMotherName(String name);
}

class father {


  void myFatherName(String name)
  {
    print(name);
  }
}


class child extends mother implements father{

  child({String? fatherName, String? motherName})
  {
    myFatherName(fatherName ?? "Unknown");
    myMotherName(motherName ?? "Unknown");
  }

  //implementing interface method or we can say must be overrided
  @override
  void myFatherName(String name)
  {
    print("Father Name is: "+name);
  }
  //implementing abstract method
  @override
  void myMotherName(String name)
  {
    print("Mother Name is: "+name);
  }
}