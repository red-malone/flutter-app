// To parse this JSON data, do
//
//     final programs = programsFromJson(jsonString);

import 'dart:convert';

Programs programsFromJson(String str) => Programs.fromJson(json.decode(str));

String programsToJson(Programs data) => json.encode(data.toJson());

class Programs {
  Programs({
    required this.requestId,
    required this.items,
    required this.count,
    required this.anyKey,
  });

  String requestId;
  List<Item> items;
  int count;
  String anyKey;

  factory Programs.fromJson(Map<String, dynamic> json) => Programs(
    requestId: json["requestId"],
    items: List<Item>.from(json["items"].map((x) => Item.fromJson(x))),
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

class Item {
  Item({
    required this.createdAt,
    required this.name,
    required this.category,
    required this.lesson,
    required this.id,
  });

  DateTime createdAt;
  String name;
  String category;
  int lesson;
  String id;

  factory Item.fromJson(Map<String, dynamic> json) => Item(
    createdAt: DateTime.parse(json["createdAt"]),
    name: json["name"],
    category: json["category"],
    lesson: json["lesson"],
    id: json["id"],
  );

  Map<String, dynamic> toJson() => {
    "createdAt": createdAt.toIso8601String(),
    "name": name,
    "category": category,
    "lesson": lesson,
    "id": id,
  };
}
