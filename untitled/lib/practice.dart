


void main(){

  /*
  print('Welcome to Dart');

  //stdout for output import 'dart:io'
  stdout.write('Enter Your Name:');

  //stdin for input
  var name = stdin.readLineSync(); // it will trim the blank space

   print('Welcome , $name');

  var person1 = new Human() ; // creating object in new Dart we can create object without using new keyword
  //Declaration of Variable
  int? a ;              //int a -> non nullable
  print('\n$a');        //int? a -> nullable

  // Error: Non-nullable variable 'a' must be assigned before it can be used.
  // But during declaration if we put ? after datatype then it can be used as null . int? a

  // Assign
  a =  20 ; // initialization
  print(a);

  // Inline declaration
  String name = "Ayush" ; // declaration initialized assignment

  BigInt bigInt ;
  bigInt = BigInt.parse('138736826383638323828737823783');
  print(bigInt);

  double per = 99.20  ;
  print(per);

  // We can also use num type to store both int and double values becuase it inherits int and double class
  num perc = 20.02 ;
  num st   = 29 ;

  bool isOk = true ;

  // Diff b/w Var and Dynamic
  String name = "ABC"  ;

  //var
  var firstName = "abc" ;
  // firstName = 29 ; it will show an error that int value can't stored in string why because at time of
  // declaration we have initialized it with type string so it is like variable . But if we only declare
  // a variable using var then we can assign any type of the values in it and that is called dynamic .

  var a ; // dynamic a  you can also write dynamic instead of var
  a = "abc " ; //string
  a = 20  ;    //int


  var human = new Human('Ayush');
  human.myName();  // funcion calling
  print(human.Addition(20, 30));

  */

  // final is a keyword we can't reassign any value to the  final variable .
  final String name ;
  name = 'Ayush' ;

  // const is also a keyword but at the declaration time of const type variable we must have to initialize it .
  // const must be inline .
  const nam = "Ayush" ;

  final names = [
    "A" ,
    "B" ,
    "C" ,
    "D"
  ] ;

  names.add("E");
  // We can add elements to the final list but we can't reassign the value to list .

  const namess = [
    "A" ,
    "B" ,
    "C" ,
    "D"
  ] ;
  namess.add("E");
  // But in case of const list we cannot add anything to list and also we can't reassign value to list .

  // Conditional statements
  
}

// { } curly braces : scope resolution


class Human {
  var name ;
  // constructor is same as class nane and kind of function which do not returns anything
  //fields
  //members
  //functions
  //constructors

  Human(String name){
    this.name = name ;
  }

  void myName() // Declaration
  {
    print('\nWelcome , $name') ;  // Definition
  }

  int Addition(int a , int b)
  {
    int sum ;
    sum = a + b ;
    return sum ;
  }

}