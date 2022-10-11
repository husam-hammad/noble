// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Cladding {
  final int id;
  final String name;
  Cladding({
    required this.id,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
    };
  }

  factory Cladding.fromMap(Map<String, dynamic> map) {
    return Cladding(
      id: map['id'] as int,
      name: map['name'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Cladding.fromJson(String source) =>
      Cladding.fromMap(json.decode(source) as Map<String, dynamic>);
}
