

void Bigger(int num1, int num2)
{
  //ternary operator . a short hand for if-else
  int bigger = (num1 > num2) ? num1 : num2; 

  print("\n\n----- Biggest Checker -----");
  print("\tNumber $bigger is the bigger one");
}

void Even_Odd_Checker(int number)
{
  String? result; //can also remain null
  
  //With Only IF statement
  if ( number % 2 == 0 ) 
    result = "EVEN";
  if ( number % 2 != 0 ) 
    result = "ODD";
  
  //A Reduced Effort Using IF-ELSE statment
  if ( number % 2 == 0 ) 
    result = "EVEN";
  else
    result = "ODD";

  print("\n\n----- Even Odd Checker -----");
  print("\tNumber $number is $result");
}

void Operator_Checker(String char)
{
  String? result; //can remain null if invalid input. will give tip later

//Checking with the SWITCH statement
  //it is just used for matching and selecting the respective code block
  switch(char)
  {
    case "+":
      result = "ADDITION";
      break;
    case "-":
      result = "SUBTRACTION";
      break;
    case "*":
      result = "MULTIPLICATION";
      break;
    case "/":
      result = "DIVIDE";
      break;
    default: //this default part is also optional
      result = "Unknown";
      break;
  }

  //Checking With the IF-ELSE-IF statement
  //here we can also use it for matching as well as relational and comparision operations
  if( char == "+" || char == "ADD" )
    result = "ADDITION";
  else if( char == "-" || char == "SUB" )
    result = "SUBTRACTION";
  else if( char == "/" || char == "DIV" )
    result = "DIVIDE";
  else if( char == "*" || char == "MUL" )
    result = "MULTIPLICATION";
  else  //this else is optional and treated as default remedy
    result = "Unknown"; 

  

  print("\n\n----- Operator Checker -----");
  print("\tCharacter $char is $result Arithmetic Operator");
}

void main() 
{
  Bigger(100, 100);

  Even_Odd_Checker(0);

  Operator_Checker("ADD");
}