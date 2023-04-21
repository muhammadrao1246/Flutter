import 'dart:core';
import 'dart:math';

//dynamic and var both accept several types of values except some differences

//here is a demonstration of inline function 
//which takes arguments and just perform single operation which will be returned
//useful where function has only purpose of returning 
dynamic add(var a, var b) => a+b;
dynamic sub(var a, var b) => a-b;
dynamic divide(var a, var b) => a/b;
dynamic multiply(var a, var b) => a*b;


//convenntional functions
void Calculator(Object? arg1, Object? arg2)
{
  print("\n\nCALCULATOR FOR TWO VALUES $arg1 AND $arg2\n");
  print("\tADD\t '+' Result: ${add(arg1, arg2)}");
  print("\tSUB\t '-' Result: ${sub(arg1, arg2)}");
  print("\tMULTIPLY 'x' Result: ${multiply(arg1, arg2)}");
  print("\tDIVIDE\t '/' Result: ${divide(arg1, arg2)}");
}

//Functions with default parameters
void DefaultCalculator([Object value1 = 10, Object value2 = 10])
{
  Calculator(value1, value2);
}

//Functions with Optional Parameters
void OptionalCalculator(Object value1, [Object? value2])
{
  value2 = value2 ?? 5; //if value2 is not passed and hence null then assign 5 to it | otherwise the value remains

  Calculator(value1, value2);
}
 

//Named Parametered functions
//we should add required attribute for which variable value we must needs
void RequiredAttribute({required Object Value1, required Object Value2})
{
  Calculator(Value1, Value2);
}

//here we have added the ? so the parameters which also accepts NULL value
//also here we define default parameter as follows
void OptionalAndDefaultAttribute({Object? Value1, Object Value2 = 5 })
{
  Value1 = Value1 ?? 2;
  Calculator(Value1, Value2);
}



void main()
{
  List names = ["Muhammad","Noor Ullah","Zulqarnain"];
  //can also be used as lambada function
  var lambda_function = (item) {
    print(item.replaceAll("a", "m"));
    print(item.toString().split(""));
  };
  
  //running for each item of list function with item as parameter
  names.forEach(lambda_function);

  dynamic arg1, arg2;

  
  arg1 = 6; arg2 = 4;
  Calculator(arg1, arg2);

  arg1 = .5; arg2 = 0.5;
  Calculator(arg1, arg2);

//this function have default parameters
  DefaultCalculator();

//this function have one optional parameter
  OptionalCalculator(5);

//this function has required named parameterized parameters
  arg1 = 10.5; arg2 = 20.5;
  RequiredAttribute(Value1: arg1, Value2: arg2);

//this function have one default parameter and one optional parameter in named parameter scheme
  OptionalAndDefaultAttribute();

}