// To parse this JSON data, do
//
//     final messageModel = messageModelFromJson(jsonString);

import 'dart:convert';

MessageModel messageModelFromJson(String str) => MessageModel.fromJson(json.decode(str));

String messageModelToJson(MessageModel data) => json.encode(data.toJson());

class MessageModel {
    MessageModel({
        required this.message,
        required this.time,
        required this.issent,
        required this.isread,
    });

    String message;
    String time;
    bool issent;
    bool isread;

    factory MessageModel.fromJson(Map<String, dynamic> json) => MessageModel(
        message: json["message"],
        time: json["Time"],
        issent: json["issent"],
        isread: json["isread"],
    );

    Map<String, dynamic> toJson() => {
        "message": message,
        "Time": time,
        "issent": issent,
        "isread": isread,
    };
}
