

void main()
{
  List<int> numbers = [5, 4, 3, 2, 1];

  //for loop
  print("FOR LOOP TRAVERSING A LIST ITEMS");
  for (var i = 0; i < numbers.length; i++) {
    print(numbers[i]);
  }
  

  Set<String> names = {"Muhammad", "Noor Ullah", "Zulqarnain"};

  //for-each loop 
  print("\n\nFOR EACH LOOP TRAVERSING SET ITEMS");
  //accepting callback as parameter
  //to be triggered for each element of the set
  names.forEach((element) {print(element);});

  
  Map<String, int> roll_numbers = {
    "Muhammad" : 507,
    "Noorullah" : 537,
    "Zulqarnain" : 528,
  };

  //for-in loop traverse directly on the items of collections (set, list, etc)
  print("\n\nFOR IN LOOP TRAVERSING MAP ITEMS");
  for (var element in roll_numbers.entries) 
  {
    print(element.key+ ":" + element.value.toString());
  }


  int i = 0;
  //while loop runs after checking the condition first
  print("\n\nWHILE LOOP TILL 100");
  while ( i > 100 ) 
  {
    print(++i); 
  }


  String s = "A";
  print("\n\nDO-WHILE LOOP TILL Z");
  //do-while loop first runs then checks the condition for the next iteration to be made
  do {
    int temp;

    temp = s.runes.first; //ASCII value of string first character

    print(s + "\t" + temp.toString());

    ++temp;
    s = String.fromCharCode(temp);
  } while (s != "Z");
}