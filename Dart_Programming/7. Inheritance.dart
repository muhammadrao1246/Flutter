
import 'dart:io';

void main(List<String> args) {
  //a patient instance running constructor with assignment
  //parent cannot access anything from child
  print("\n\nINSTANTIATING PARENT");
  parent("i am a parent1");
  new parent("i am a parent2");

//childs extends parent qualties so he can use any member and method of parent
  //the instance of class which does not have own constructor defined
  print("\n\nINSTANTIATING CHILD 1");
  child1 child_1 = new child1("I AM A child1");

  //the instance of class which does have his own constructor defined
  print("\n\nINSTANTIATING CHILD 2");
  child2 child_2 = new child2("I AM A child2");

}
// Single Inheritance - In this type of inheritance, a class can inherit from only one class. In Dart, we can only extend one class at a time.
class Class_1 {
  
}

class Class_2 extends Class_1 {
  
}


// Multilevel Inheritance - In this type of inheritance, a class can inherit from another class and that class can also inherit from another class. In Dart, we can extend a class from another class which is already extended from another class.
class grandparent{
  grandparent(String state)
  {
    print(state);
  }
}

class father extends grandparent{

  father(String state):super(state);

}

class son extends father{

  son(String state):super("I Am Parent")
  {
    print("I Am Child");
  }

}




//***************MULTIPLE INHERITANCE NOT ALLOWED*********
// Multiple Inheritance - In this type of inheritance, a class can inherit from multiple classes. Dart does not support multiple inheritance. For e.g. Class Toyota extends Car, Vehicle {} is not allowed in Dart.


// Hierarchical Inheritance - 
//In this type of inheritance, parent class is inherited by multiple subclasses. For example, the Car class can be inherited by the Toyota class and Honda class.

class parent{
  parent(String state)
  {
    print(state);
  }
}

class child1 extends parent{

  child1(String state):super(state);

}

class child2 extends parent{

  child2(String state):super("I Am Parent")
  {
    print("I Am Child");
  }

}

