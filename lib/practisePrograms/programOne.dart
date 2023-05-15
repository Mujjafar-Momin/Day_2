/*
class CheckForFinalConst{

final fWord="Final Word";

// const cWord="Const Word";         //here we can't use const as it is instance variable
static const cWord="Const Word";     //so that's why we need to use the static keyword
}

void main(){

 //examples of integer data type
 int value =1234;
 var vValue=1234;
 int hexValue=0xEADABAEE;
num numValue=12.34;

  print(" Using Int Value:${value}");
  print(" Using var Value:${vValue}");
  print(" using hexvalue:${hexValue}");
  print(" Num Value:${numValue}");


//examples of double data type

double n=144e2;
  print("Double value $n");


//examples of String data type

  String str='Mujjafar';
    print("Hello "+str);  //not a good practice
    print("Hello..! $str"); //This is good practice


 //example of final and static variable
final fWord="Final Word";
const cWord="Const Word";

print(fWord);
print(cWord);
}







import 'dart:io';

void main(){

print("Enter Number");
int ? number =int.parse(stdin.readLineSync()!);

// int number=13;

bool isPrime=true;

  if (number>=2){

    for(var i=2;i<number;i++){
      if(number%i==0){
           isPrime=false;
      }
    }

    if(isPrime){
       print("$number is prime number");
      }else{
        print("$number is not prime number");
      }
  }else if(number==0||number==1){
  print("$number is Composite Number");
}else{
  print("Invalid Input Number");
}

}




void main(){

 String grade ='D';

 switch(grade){
  case 'A' : print("Excellent..You have got $grade grade");
            break;
  case 'B' : print("Very Good..You have got $grade grade");
            break;
  case 'C' : print("Good..You have got $grade grade");
            break;
  case 'F' : print("Sorry..You are fail");
            break;
  default: print("Invalid Grade");


 }
}

//operators
void main() {

  //conditional operators
  int a=21;
  int b=3;
  //ternary operator
  a<b?print("a is smaller"):print("b is smaller");

  //not null
  int? c=null;

  int d=c??a;
  print(d);


}



//function without return type
void main() {
  findArea(2,4);
}

void findArea(int length,int breadth){

  print("Area is ${length*breadth}");

}


//function with return type
void main() {
  int area= findArea(2,4);
  print(area);
}
int findArea(int length,int breadth){
  return length*breadth;
}




//function with return type and using arraow expression
void main() {
  int area= findArea(2,4);
  print(area);
}
int findArea(int length,int breadth)=>length*breadth;



//required and optional parameter
void main() {

 printCities("Mumbai", "Parel", "Andheri");
 print("");

 printCounties("India", "USA");
 print("");

 findVolume(2,height:2,breadth:2); ///even we change position of parameter it will works
 print("");

 findAreaCircle(4);

 }

 //required parameter
void printCities(String name1,String name2,String name3)
{
  print("Name of city 1 : $name1");
  print("Name of city 2 : $name2");
  print("Name of city 3 : $name3");
}

//optional positional parameter
void printCounties(String name1,String name2,[String? name3])
{
  print("Name of city 1 : $name1");
  print("Name of city 2 : $name2");
  print("Name of city 3 : $name3");
}

//named optional parameter
void findVolume(int length,{ int? breadth,int? height}){
  print("Volume is: ${length*breadth!*height!}");
}

//default optional parameter
 findAreaCircle(double r ,{double pi=3.14}){
  print("Area of Circle : ${r*pi}");
 }



//Exception Handling
void main() {

try{
  int result =12~/0;
print("the result is :$result");
} on Exception{
  print("Number can not divisible by zero");
}
// catch(e,s){
// print("The exception occured is :$e");
// print(s);
// }
finally{
  print("Finally executed");
}
}


//custom exception handling
void main() {

  try{
    depositAmount(-200);

  }
  catch(e){
      DepositeGreaterThanZero dp= DepositeGreaterThanZero();
    print(dp.errorMessage());
  }
}

class DepositeGreaterThanZero implements Exception{
  String errorMessage(){
    return "The deposite amount must greater than zero";
  }
}
void depositAmount(int amount){
if (amount<0){
  throw new DepositeGreaterThanZero();
}
}



//classs, objects and constructor
void main() {

// var st=Student(1,"rahul");
var st=Student(1,"Rahul");
print("Id: ${st.id} Name: ${st.name}");
print("");


var st2=Student.myCustomConstructor(2,"Rohit");
print("Id: ${st2.id} Name: ${st2.name}");

}

class Student{

  int? id;
  String? name;

  // Student(){                   //Default constructor
  //   print("Default Constructor");
  // }

   Student(this.id,this.name); //parameterized constructor

  Student.myCustomConstructor(this.id,this.name){ //custom named constructor
    print("Custom constructor");
  }
}
*/
