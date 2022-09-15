// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Property {
  final int id;
  final String name;
  final String type;
  final Null properyType;
  final String price;
  final String title;
  final String description;
  final String image;
  final String space;
  final int views;
  final int rooms;
  final int baths;
  Property(
      {required this.id,
      required this.name,
      required this.type,
      required this.properyType,
      required this.price,
      required this.title,
      required this.description,
      required this.image,
      required this.space,
      required this.views,
      required this.rooms,
      required this.baths});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'type': type,
      'properyType': properyType,
      'price': price,
      'title': title,
      'description': description,
      'image': image,
      'space': space,
      'views': views,
      'rooms': rooms,
      'baths': baths,
    };
  }

  factory Property.fromMap(Map<String, dynamic> map) {
    return Property(
      id: map['id'] as int,
      name: map['name'] as String,
      type: map['type'] as String,
      properyType: map['properyType'] as Null,
      price: map['price'] as String,
      title: map['title'] as String,
      description: map['description'] as String,
      image: map['image'] as String,
      space: map['space'] as String,
      views: map['views'] as int,
      rooms: map['rooms'] as int,
      baths: map['baths'] as int,
    );
  }

  String toJson() => json.encode(toMap());

  factory Property.fromJson(String source) =>
      Property.fromMap(json.decode(source) as Map<String, dynamic>);
}
