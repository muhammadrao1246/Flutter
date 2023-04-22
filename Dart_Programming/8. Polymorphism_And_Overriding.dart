
import 'dart:io';

//method overloading is not allowed
void who_am_i() => print("A Human");
// void who_am_i(String name); // not possible


void main(List<String> args) 
{
  who_am_i();


  print("\n\nINSTANTIATING PARENT (will run its own the parent body myName method)");
  parent().myName();

  print("\n\nINSTANTIATING CHILD (will override the parent myName method)");
  child child_1 = child();
  child_1.myName(); //overiding

}

class parent{
  void myName() //the overrided method
  {
    print("Relation is parent -> child");
  }
  //the overloading is not allowed inside of classes but is possible in global scope
}

class child extends parent
{
  void myName() //the overriding method
  {
    print("Relation is child -> parent");
  }

}


