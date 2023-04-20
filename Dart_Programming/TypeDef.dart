
//when you are coming from another language "JAVA"
//A type alias—often called a typedef 
//because it’s declared with the keyword typedef—is a concise way 
//to refer to a type.
typedef ArrayList<T> = List<T>;
typedef HashMap<T, K> = Map<T, K>;
typedef Integer = int;
typedef FloatValue = double;

void main() 
{
  ArrayList hi = [0,231,21,"fsfa"]; //not type safe 
  ArrayList<String> names= ["M","H"]; //type safe list
  ArrayList an_array = List.filled(3, 0, growable: false); //conventional array

//not type safe
  HashMap attributes = {
    "Name" : "Muhammad",
    0 : 0.42
  };

//typesafe map
HashMap<String, int> roll_numbers = {
  "NoorUllah" : 537,
  "Muhammad" : 507,
  "Zain" : 557
};


  //Integer value
  Integer cnic = 6110195288133;

  //Float in reality a double
  FloatValue round = 4.131;

}