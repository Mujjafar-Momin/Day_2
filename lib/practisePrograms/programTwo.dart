/*
//Inheritance Example
void main(){
  var dog=Dog();
  dog.name="Tom";
  dog.color="Black";
  dog.age=5;
  dog.eat();
  dog.bark();

  var  cat =Cat();
  cat.name="Jerry";
  cat.color="Brown";
  cat.price=20000;
  cat.eat();
  cat.meow();
}
class Animal {
  String? name;
  String? color;

  void eat(){
    print("$name is Eating..!");
  }
}

class Dog extends Animal
{
  int? age;

  void bark(){
    print("The dog barks..!");
  }
}
class Cat extends Animal{
  int? price;

  void meow(){
    print("Cat Meow..!");
  }
}
*/

/*
//method overriding
void main(){
  var dog=Dog();
  dog.eat();
}

class Animal {
  String? name ;
void eat (){
    print("Animal is Eating ");
}
}
class Dog extends Animal{
  String? color;

  @override       //overriding the eat method from parent class
  void eat(){
    print("Dog is Eating");
    super.eat();      //calling parent class using super
  }
}
*/

/*

//Inheritance using default and parameterized constructor
void main(){

  // var dog1= Dog();

  var dog= Dog("W");

  print("");
  var dog2=Dog.overloaded("w","w");

}

class Animal {
  String? color;

  Animal(){          //parent default constructor
    print("Animal class default constructor");
  }

// Animal(String color){     //parameterized parent constructor
//   this.color=color;
//   print("Animal parameterized constructor");
// }

}

class Dog extends Animal{
  String? breed;

  // Dog(){                          // child default constructor
  //   print("dog class default constructor");
  // }

  Dog(String breed) : super(){                 //child parameterized constructor"
    print("dog class default constructor");
  }

  Dog.overloaded(String breed,String color):super(){   // child named parameterized constructor
    this.breed;
    print("dog class parameterized constructor");
  }
}
*/
/*

//Abstraction
void main() {

  // var s=shape();           //we can't create object of abstract class
  var rect = Rectangle();
  rect.draw();
  rect.erase();
}

abstract class Shape {
  void draw();

  void erase() {
    //we may declare concrete methods
    print("Erasing...!");
  }
}

class Rectangle extends Shape {
  void draw() {
    print("Drawing...!");
  }

  @override
  void erase() {
    //we may override concrete methods
    super.erase();
    print("Erased...!");
  }
}
 */

/*
//Interface
void main(){

  var k=Karan();
  k.run();
  k.walk();
  k.eat();
  k.sleep();

}
abstract class  Human{
  void walk ();
  void run();
}
abstract class  Man{
  void eat ();
  void sleep ();
}

//with help of interface we can implements two classes at time
class Karan implements Human,Man{
  @override
  void run() {
    print("Man is runing...!");
  }

  @override
  void walk() {
    print("Man is walking...!");
  }

  @override
  void eat() {
    print("Man is Eating...!");
  }

  @override
  void sleep() {
    print("Man is Sleeping...!");
  }
}
 */

/*
//Static Variable and Static Methods
void main(){
  //we can access static variables & methods without creating object
  Circle.calculateCircle();
  Circle.pi;
}

class Circle{

  static double pi=3.14;
  // double radias =5   //instance variable

  static void calculateCircle(){

    double radius=5;        //local variable
    double area =radius*pi;
    print("Area of circle is :$area");
  }
}
 */

/*
//Encapsulation
void main(){
  var ch=CheckEncaps();
  ch._setName="String";      //accessing private set methods and variables
  ch._setPrice=90;

  print(ch._getName);        //accessing private get methods
  print(ch._getPrice);

}

class CheckEncaps{

  String? _name;                      //private variables
  int? _price;

  void set _setName(String name){     //private methods

    this._name=name;
    print("name set successfully");
  }

  void set _setPrice(int price){
    this._price=price;
    print("price set successfully");
  }

  String get _getName{
    return _name!;
  }

  int get _getPrice{
    return _price!;
  }
}

 */

/*
//run time polymorphism
void main(){

  var port=AirPort();
  var c=CargoPlane();
  var p=PassengerPlane();

  port.allowPlane(c);
  c.planeCarryingBox();
  print("");
  port.allowPlane(p);
  p.planeCarryingPassenger();
}

class Plane {
  void planeFlying(){
    print("plane is flying");
  }
  void planeLanding(){
    print("plane is landing");
  }
}
class CargoPlane extends Plane{

  void planeCarryingBox(){
    print("plane carrying box");
  }

}

class PassengerPlane extends Plane{

  void planeCarryingPassenger(){
    print("plane carrying passengers");
  }

}
class AirPort {
  var p=Plane();

  void allowPlane(Plane ref){

    ref.planeFlying();
    ref.planeLanding();
  }
}

 */
/*
//Function Expression ND Lambda Function
void main (){
    //using function Expression
  Function addTwoNumbers =(int a, int b){
    int sum=a=b;
    print (sum);
  };
  
  Function multiplyByFour=(int mul){
    return mul*4;
  };
  
  addTwoNumbers(4,5);
  print(multiplyByFour(5));

  //using Lambda Expression

    Function addTwoNumber=(int a,int b)=>print(a+b);
    Function multiplyByFive=(int c)=>print(c*4);

    addTwoNumber(4,5);
    multiplyByFive(6);

}

 */

/*
//Collection framework
//List
void main(){

  List<int>? numList=[];
  numList.add(1);
  numList.add(3);
  numList.add(67);
  numList.add(6);
  numList.add(4);
  print(numList);

  var num=numList.reversed.toList();
  numList.removeAt(3);
  print(num);
  print(numList);

  List<String> strList=[];
  strList.add("Hello");
  strList.add("yash");
  strList.add("raj");
  strList.add("Jay");
  print(strList);
  //var list1=strList.reversed.toList();
  bool removed =strList.remove('yash');
  // print(list1);
  print(strList);
  print(removed);
  strList.clear();
  print(strList);
}
 */
/*
void main(){

  Set<int> numSet=Set();

  var strSet={2,3,4,5,6};
  var strSet1={3,4};
  numSet.add(2);
  numSet.addAll(strSet);
  numSet.remove(6);
  print(numSet.length);
  print(numSet.contains(2));
  print(numSet.difference(strSet1));
  print(numSet);
  
}
 */
/*
//Map

void main(){


  Map<String,String> fruits=Map();
  fruits["apple"]="red";
  fruits["mango"]="yellow";
  fruits["gauva"]="green";

  for(String key in fruits.keys){
    print(key);
  }
print("");
  for(String value in fruits.values){
    print(value);
  }
  print("");
  fruits.forEach((key, value) {
    print("Key: $key and Value: $value");
  });
}
 */
/*
//callable methods
void main(){
  var p=Person();
  p();


  var m=Man();
 String msg= m(12,"Raj");
 print(m(15,"Ram"));
 print(msg);

}

class Person{

  call(){
    print("Callable method");
  }
}

class Man{

  String call(int age ,String name)=> "The $name is $age years old ";
}
 */
