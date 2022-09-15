// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Cladding {
  final int id;
  final String name;
  final String createdAt;
  final List properties;
  Cladding({
    required this.id,
    required this.name,
    required this.createdAt,
    required this.properties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'created_at': createdAt,
      'properties': properties,
    };
  }

  factory Cladding.fromMap(Map<String, dynamic> map) {
    return Cladding(
        id: map['id'] as int,
        name: map['name'] as String,
        createdAt: map['created_at'] as String,
        properties: List.from(
          (map['properties'] as List),
        ));
  }

  String toJson() => json.encode(toMap());

  factory Cladding.fromJson(String source) =>
      Cladding.fromMap(json.decode(source) as Map<String, dynamic>);
}
