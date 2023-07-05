import 'dart:convert';

List<User> userFromJson(String str) => List<User>.from(json.decode(str).map((x) => User.fromJson(x)));



class User {
  User({
    this.Vorname,
    this.Nachname,

  });

  String? Vorname;
  String? Nachname;


  factory User.fromJson(Map<String, dynamic> json) => User(
    Vorname: json["Vorname"],
    Nachname: json["Nachname"],

  );


}


