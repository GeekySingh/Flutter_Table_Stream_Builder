import 'package:flutter/cupertino.dart';

enum Gender { Male, Female }

@immutable
class UserModel {
  final String name;
  final int age;
  final Gender gender;
  final String address;

  UserModel({this.name, this.age, this.gender, this.address});

  static List<UserModel> userList = [
    UserModel(name: 'Jack', age: 19, gender: Gender.Male, address: 'NY'),
    UserModel(name: 'Yang', age: 22, gender: Gender.Male, address: 'CN'),
    UserModel(name: 'Scarlet', age: 26, gender: Gender.Female, address: 'CA'),
    UserModel(name: 'Mohan', age: 18, gender: Gender.Male, address: 'DL'),
    UserModel(name: 'Jack', age: 19, gender: Gender.Male, address: 'LA'),
    UserModel(name: 'Nany', age: 24, gender: Gender.Female, address: 'DL'),
  ];
}
