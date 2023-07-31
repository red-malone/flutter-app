// To parse this JSON data, do
//
//     final lessons = lessonsFromJson(jsonString);

import 'dart:convert';

Lessons lessonsFromJson(String str) => Lessons.fromJson(json.decode(str));

String lessonsToJson(Lessons data) => json.encode(data.toJson());

class Lessons {
  Lessons({
    required this.requestId,
    required this.items,
    required this.count,
    required this.anyKey,
  });
  String requestId;
  List<Items> items;
  int count;
  String anyKey;

  factory Lessons.fromJson(Map<String, dynamic> json) => Lessons(
    requestId: json["requestId"],
    items: List<Items>.from(json["items"].map((x) => Items.fromJson(x))),
    count: json["count"],
    anyKey: json["anyKey"],
  );

  Map<String, dynamic> toJson() => {
    "requestId": requestId,
    "items": List<dynamic>.from(items.map((x) => x.toJson())),
    "count": count,
    "anyKey": anyKey,
  };
}

class Items {
  Items({
    required this.createdAt,
    required this.name,
    required this.duration,
    required this.category,
    required this.locked,
    required this.id,
  });

  DateTime createdAt;
  String name;
  int duration;
  String category;
  bool locked;
  String id;

  factory Items.fromJson(Map<String, dynamic> json) => Items(
    createdAt: DateTime.parse(json["createdAt"]),
    name: json["name"],
    duration: json["duration"],
    category: json["category"],
    locked: json["locked"],
    id: json["id"],
  );

  Map<String, dynamic> toJson() => {
    "createdAt": createdAt.toIso8601String(),
    "name": name,
    "duration": duration,
    "category": category,
    "locked": locked,
    "id": id,
  };
}
