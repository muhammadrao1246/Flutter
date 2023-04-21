
void main(List<String> args) {
   //works as an growable arraylist that can have multiple type of data in it
  List friends = ["NoorUllah", 537, "Zulqarnain", 528, "Qasim Doubles", 516517];

  //we can also make a typesafe array
  List<int> random_numbers = [0,1,5,6,7,8,9,2,3,4];

  //we can also make a conventional array with fixed size
  //here an array is declared with type of INT
  //having its length as 3 and on each index there is 0 placed initially
  //an this array is not growable means we cannot add more data to it
  List<int> an_array = new List.filled(3, 0, growable: false); 
  an_array[0] = 507;

  //we can also declare a map without specifiing its index and value datatype
  Map student_data;
  student_data = Map(); //empty map assignment
  //adding data to it
  student_data = {
    "Name": "Student Name",
    "Roll_No": 5000,
    "Section": "BSCS-6A"
  };


  //we can also declare a map by specifiing its index and value datatype
  Map<String, Object> Student_Data = {
    "Name" : "Zain",
    "Arid No." : '20-ARID-557',
    "Age" : 5000,
    "Semester" : 6,
    "Class" : 'BSCS',
    "Section" : "A",
    "Subjects_Studying" : ["DE" , "MAD", "CN", "CG", "PS", "AI"]
  };


  
  //  SET COLLECTION 
  //  A set in Dart is an unordered collection of unique items. 
  //  Dart support for sets is provided by set literals and the Set type.
  Set<int> CNIC = {6110195288133, 6110195288134, 6110195288135, 6110195288136};

//an empty set declaration . can be declared with any combination of methods
  Set<String> request_statuses = <String>{};



    //SOME LIST Datatype methods
    {
      friends.add("hi how are you"); //adding a new value into array list
      friends.remove("Noor Ullah"); //will remove this value
      friends.contains("Zulqarnain"); //will check it exists
      friends.insert(0, "Hi in start"); //inserting element at specified index
      friends.length; //how many items are there
      // friends.clear(); //to clear the list

      //DISPLAYIGN LIST DATA
      print("\n\nTHE LIST DATA DISPLAYING HERE: ");
      print(friends);
      print("Accessing By INDEX: ${friends[0]}");
      
    }


    //Some MAP datatype methods
    {
      student_data["Roll_No"]; //will get 5000 as assigned above
      student_data.length; //number of properties
      student_data.update("Roll_No", (value) => 507); //can update the value at index "Roll_No" by arrow function 
      //we will discuss arrow function later

      //will add a new item if not present and will update if it exists previously
      student_data.addAll({"Class" : "A"});
      student_data.putIfAbsent("Class", () => "B"); //works same like addAll() function

      //will remove the key from map holding the value
      student_data.remove("Class");

      //will check whether a key or value is in the map or not
      student_data.containsKey("Class"); 
      student_data.containsValue(5000);

      // student_data.clear(); //will clear all the map keys and their holding values
      
      //Displaying the MAP DATA
      print("\n\nTHE MAP DATA DISPLAYING HERE: ");
      print(student_data);
    }

    //Some SET datatype methods
    {
      CNIC.add(6110195288139); //ading a single
      CNIC.addAll({6110195288138, 6110195288137}); //adding a whole set in the SET

      CNIC.join(" "); //will convert and then concatenate all the items in string datatype

      CNIC.contains(6110195288133); //check whether exists or not
      CNIC.remove(6110195288133); //will remove this value

      CNIC.elementAt(0); //will return 6110195288133 if at first place
      CNIC.retainAll({6110195288134,6110195288137}); //will remove all the values other than this from set

      //Displaying the SET DATA
      print("\n\nTHE SET DATA DISPLAYING HERE: ");
      print(CNIC);
    }
}