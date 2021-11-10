main(List<String> args) {
  var country = new Country("KG", "Summer");
  country.printSmth();

  var car = new Car("Yellow", 230, "PassatCC", 8000);
  car.printParam();

  var student = new Student("Ariet", "Egemberdiev", 1998, 2016);
  student.getFullName();
  student.getCourse();
}

class Country {
  String? name;
  String? weather;

  Country(this.name, this.weather);

  void printSmth() {
    print("Name of the country is: ${name}, weather is: $weather");
  }
}

class Car {
  String? color;
  int? power;
  String? name;
  int? price;

  Car(this.color, this.power, this.name, this.price);

  void printParam() {
    print(
        "Name of the car is: $name, power is :$power, color is $color, price is $price USD");
  }
}

class User {
  String? name;
  String? surname;
  int? year;
  int? yearApply;

  User(this.name, this.surname, this.year, this.yearApply);

  getFullName() {
    print("Name is $name, surname is $surname, he was born in $year");
  }

  int course = DateTime.now().year;

  getCourse() {
    if (yearApply == course) {
      print("He is 1st course student");
    } else if (yearApply! < course &&
        yearApply! <= 2017 &&
        yearApply! >= 2021) {
      var currentCourse = course - yearApply! + 1;
      print("He is ${currentCourse}nd/rd/th course student");
    } else if (yearApply! < 2017) {
      print("He is not student anymore");
    } else if (yearApply! > 2021) {
      print("That is future time");
    }
  }
}

class Student extends User {
  Student(String? name, String? surname, int? year, int? yearApply)
      : super(name, surname, year, yearApply);
}
