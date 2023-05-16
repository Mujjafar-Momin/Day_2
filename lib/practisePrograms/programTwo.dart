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
