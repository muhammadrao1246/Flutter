
//Abstract classes are classes that cannot be initialized. 
//It is used to define the behavior of a class that can be inherited by other classes. 
//An abstract class is declared using the keyword abstract.
//only have signature

import 'dart:developer';

void main(List<String> args) 
{
  Cat meow = Cat();
  meow.walk();
  meow.eat();
  meow.sleep();
}

/*Key Points To Remember
You can’t create an object of an abstract class.
It can have both abstract and non-abstract methods.
It is used to define the behavior of a class that other classes can inherit.
Abstract method only has a signature and no implementation. */
abstract class animal {
  int? bodyWeight; //can only have initialized memebers
  int? bodyHeight;
  String legs = "4";
  
  final int eyes = 2; //also constants possible without const
  
  void walk();
  void eat();
  void sleep();

//may also simple member or static methods defined in it
  static void init(String specie) 
  {
    print("Animal Now is $specie\n\n");
  }

  void a_simple_menber_function()
  {

  }
}

//the extending class must implement all the methods of abstract class
class Cat extends animal{
  void eat()
  {
    print("Eating Meat");
  }
  void walk()
  {
    animal.init("Cat");
    print("walking with $legs legs");
  }
  void sleep()
  {
    print("Sleeping");
  }
}