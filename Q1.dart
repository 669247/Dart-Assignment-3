// **********************Q1**********************
/*Create a Vehicle class with brand, model, and year properties, and a method called drive() that prints a
message indicating that the vehicle is being driven. Then create a Car class that inherits from Vehicle and
has a numDoors property. Override the drive() method in the Car class to print a message that includes the
number of doors.*/

class Vehicle {
  String brand;
  var model;
  int year;

  Vehicle(this.brand, this.model, this.year);

  void drive() {
    print("The Vehicle is being driven.");
  }
}

class Car extends Vehicle {
  int numDoors;

  Car(String brand, var model, int year, this.numDoors)
      : super(brand, model, year);

  void drive() {
    print("It has $numDoors number of doors.");
  }
}

main() {
  Car car = new Car('Toyota', 'Corolla', 2023, 4);
  Car.drive();
}
