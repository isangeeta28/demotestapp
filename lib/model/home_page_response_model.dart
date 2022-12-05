// To parse this JSON data, do
//
//     final homePageResModel = homePageResModelFromJson(jsonString);

import 'dart:convert';

List<HomePageResModel> homePageResModelFromJson(String str) => List<HomePageResModel>.from(json.decode(str).map((x) => HomePageResModel.fromJson(x)));

String homePageResModelToJson(List<HomePageResModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class HomePageResModel {
  HomePageResModel({
    this.userId,
    this.id,
    this.title,
    this.completed,
  });

  int? userId;
  int? id;
  String? title;
  bool? completed;

  factory HomePageResModel.fromJson(Map<String, dynamic> json) => HomePageResModel(
    userId: json["userId"],
    id: json["id"],
    title: json["title"],
    completed: json["completed"],
  );

  Map<String, dynamic> toJson() => {
    "userId": userId,
    "id": id,
    "title": title,
    "completed": completed,
  };
}
