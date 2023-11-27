import 'dart:convert';
import 'dart:core';

List<Person> userListFromData(String data) =>
    List<Person>.from(jsonDecode(data).map((e) => Person.fromJson(e)));

class Person {
  late String name;
  late int age;
  late bool isStudent;
  late List<dynamic> grades;
  late Address address;

  Person.fromJson(Map<String, dynamic> json) {
    name = json["name"];
    age = json["age"];
    isStudent = json["isStudent"];
    grades = json["grades"];
    address = Address.fromJson(json["address"]);
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> map = {
      "name": name,
      "age": age,
      "isStudent": isStudent,
      "grades": grades,
      "address": address
    };
    return map;
  }

  @override
  String toString() {
    return "Name: $name\nAge: $age\nisStudent: $isStudent\ngrades: $grades\naddress: $address";
  }
}

class Address {
  late String city;
  late String zipCode;

  Address.fromJson(Map<String, dynamic> json) {
    city = json["city"];
    zipCode = json["zipCode"];
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> map = {
      "city": city,
      "zipCode": zipCode,
    };
    return map;
  }

  @override
  String toString() {
    return "city: $city\nZip Code: $zipCode";
  }
}
