
//global variables also possible
String country = "PAKISTAN";

void main()
{
  //primitive datatypes built-in supported by dart
  int Roll_No = 507;
  String Name = "Muhammad Bin Zulfiqar";
  bool Human = true;
  double PI = 3.14;

  //modern conventions
  //   CONST with or without data type
  const TITLE = "BASIC TUTORIAL"; //value cannot be changed of this variable
  const String sp = "Adnan"; 

  //    FINAL word with or without datatype work same as the const
  final TT  = "TiloTiti";
  final String PKT = "Cisco Packet Tracer";

  dynamic age = 19; //we can assign this variable a value of any type in later use
  age = "19";

  Object count = 1; //also work same lik dynamic
  count = "Muhammad";


  //you can assign any value to "var" but then you cannot change the type of the vaiable on runtime
  var dark = "Very Dark";
  // dark = 1; ;Not Possible 

 
  //print method to display the data
  print(Name+"\n"+Roll_No.toString());
  //methods for concatenation for string
  print("Another Method For Concatenation ${Roll_No}");
  
    //Some methods of INT datatype
    {
        Roll_No.ceil(); //have its MATH function associated with it
        Roll_No.abs();
        Roll_No.floor();
        

      //utility variables returning bools and values
        Roll_No.runtimeType; //will return its datatype
        Roll_No.isEven;
        Roll_No.isOdd;
        Roll_No.isNaN; //will return true if its not a number
        Roll_No.isNegative; //will return true if its negative

      //utility functions
        Roll_No.toRadixString(8); //will return 8 or Octal representation of the int value
        Roll_No.toString();

      //DISPLAYIGN INT DATA
      print("\n\nTHE INTEGER DATA DISPLAYING HERE: ");
      print(Roll_No);
    }

    //Some STRING Datatype methods
    {
      //utility functions
      //all functions like in java
      Name.substring(0,5);
      Name.length;
      Name.contains("Bin");
      Name.trim();
      Name.toUpperCase();
      Name.split(" ");
      Name.replaceAll("Bin", " ");

      //DISPLAYIGN STRING DATA
      print("\n\nTHE STRING DATA DISPLAYING HERE: ");
      print(Name);
    }

}