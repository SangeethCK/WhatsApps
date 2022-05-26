// To parse this JSON data, do
//
//     final statusModels = statusModelsFromJson(jsonString);

import 'dart:convert';

StatusModels statusModelsFromJson(String str) =>
    StatusModels.fromJson(json.decode(str));

String statusModelsToJson(StatusModels data) => json.encode(data.toJson());

class StatusModels {
  StatusModels({
    required this.image,
    required this.name,
    required this.time,
    required this.isgroup,
  });

  String image;
  String name;

  String time;
  bool isgroup;

  factory StatusModels.fromJson(Map<String, dynamic> json) => StatusModels(
        image: json["image"],
        name: json["name"],
        time: json["time"],
        isgroup: json["isgroup"],
      );

  Map<String, dynamic> toJson() => {
        "image": image,
        "name": name,
        "time": time,
        "isgroup": isgroup,
      };
}
