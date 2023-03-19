//*****************************Q3**************************
/*Create a Person class with firstName and lastName properties, and a method called fullName() that returns the full name of the person.
Then create a Student class that inherits from Person and has a major property. Override the fullName() method in the Student class to 
include the major in the full name.*/


class Person {
  String firstName;
  String lastName;
  String fullNameOfPerson;

  Person(this.firstName, this.lastName, this.fullNameOfPerson);

  fullName() {
    String fullName = firstName + lastName;
    print("Fullname is: $fullName");
    return fullName;
  }
}

class Student extends Person {
  String major;

  Student(
      String firstName, String lastName, String fullNameOfPerson, this.major)
      : super(firstName, lastName, fullNameOfPerson);

  fullName() {
    String fullName = firstName + lastName;
    print("Fullname is: $fullName");
    print("$major is Major of the Student.");
    return major;
  }
}

void main() {
  Student student =
      Student("Muhammad", "Owais", "Software Engineering", "Muhammad Owais");
  student.fullNameOfPerson;
}

