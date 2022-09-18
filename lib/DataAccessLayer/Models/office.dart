// ignore_for_file: public_member_api_docs, sort_constructors_first, non_constant_identifier_names
import 'dart:convert';

import 'package:noble/DataAccessLayer/Models/property.dart';

class Office {
  final int id;
  final String name;
  final String logo;
  final String slug;
  final String address;
  final String created_at;
  Office(
      {required this.id,
      required this.name,
      required this.slug,
      required this.created_at,
      required this.address,
      required this.logo});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'slug': slug,
      'created_at': created_at,
      'logo': logo,
      'address': address,
    };
  }

  factory Office.fromMap(Map<String, dynamic> map) {
    return Office(
      id: map['id'] as int,
      name: map['name'] as String,
      slug: map['slug'] as String,
      address: map['address'] as String,
      created_at: map['created_at'] as String,
      logo: map['logo'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Office.fromJson(String source) =>
      Office.fromMap(json.decode(source) as Map<String, dynamic>);
}
