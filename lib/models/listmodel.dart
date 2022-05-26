// To parse this JSON data, do
//
//     final welcome = welcomeFromJson(jsonString);

import 'dart:convert';

Welcome welcomeFromJson(String str) => Welcome.fromJson(json.decode(str));

String welcomeToJson(Welcome data) => json.encode(data.toJson());

class Welcome {
    Welcome({
        required this.avatar,
        required this.name,
        required this.message,
        required this.time,
        required this.isgroup,
    });

    String avatar;
    String name;
    String message;
    String time;
    bool isgroup;

    factory Welcome.fromJson(Map<String, dynamic> json) => Welcome(
        avatar: json["avatar"],
        name: json["name"],
        message: json["message"],
        time: json["Time"],
        isgroup: json["isgroup"],
    );

    Map<String, dynamic> toJson() => {
        "avatar": avatar,
        "name": name,
        "message": message,
        "Time": time,
        "isgroup": isgroup,
    };
}
