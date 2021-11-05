main(List<String> args) {
  var country = new Country("KG", "Summer");
  country.printsmth();
}

class Country {
  String? name;
  String? weather;

  Country(this.name, this.weather);

  void printsmth() {
    print("Name of the country is: ${name}, weather is: $weather");
  }
}
