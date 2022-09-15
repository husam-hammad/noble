// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:noble/DataAccessLayer/Models/property.dart';

class Office {
  final int id;
  final String name;
  final String slug;
  final String createdAt;
  final List<Property> properties;
  Office({
    required this.id,
    required this.name,
    required this.slug,
    required this.createdAt,
    required this.properties,
  });

  Office copyWith({
    int? id,
    String? name,
    String? slug,
    String? createdAt,
    List<Property>? properties,
  }) {
    return Office(
      id: id ?? this.id,
      name: name ?? this.name,
      slug: slug ?? this.slug,
      createdAt: createdAt ?? this.createdAt,
      properties: properties ?? this.properties,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'slug': slug,
      'created_at': createdAt,
      'properties': properties.map((x) => x.toMap()).toList(),
    };
  }

  factory Office.fromMap(Map<String, dynamic> map) {
    return Office(
      id: map['id'] as int,
      name: map['name'] as String,
      slug: map['slug'] as String,
      createdAt: map['created_at'] as String,
      properties: List<Property>.from(
        (map['properties'] as List<int>).map<Property>(
          (x) => Property.fromMap(x as Map<String, dynamic>),
        ),
      ),
    );
  }

  String toJson() => json.encode(toMap());

  factory Office.fromJson(String source) =>
      Office.fromMap(json.decode(source) as Map<String, dynamic>);
}
