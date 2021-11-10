main(List<String> args) {
  var country = new Country("KG", "Summer");
  country.printSmth();

  var car = new Car("Yellow", 230, "PassatCC", 8000);
  car.printParam();
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
