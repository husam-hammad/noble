// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

/*
"id": 2,
  "name": "Hussam 1",
  "email": "admin@admin.com",
  "mobile_number": "",
  "token": "",
  "avatar": "https://noble.brain.sy/storage/users/default.png",

*/
class User {
  final int id;
  final String mobileNumber;
  final String name;
  final String email;
  final String avatar;
  final String token;
  User({
    required this.id,
    required this.mobileNumber,
    required this.name,
    required this.email,
    required this.avatar,
    required this.token,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'mobile_number': mobileNumber,
      'name': name,
      'email': email,
      'avatar': avatar,
      'token': token
    };
  }

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      id: map['id']?.toInt() ?? 0,
      mobileNumber: map['mobile_number'] ?? '',
      name: map['name'] ?? '',
      email: map['email'] ?? '',
      avatar: map['avatar'] ?? '',
      token: map['token'] ?? '',
    );
  }
  factory User.fromBoxMap(Map<String, dynamic> map) {
    return User(
      id: map['id']?.toInt() ?? 0,
      mobileNumber: map['mobilenumber'] ?? '',
      name: map['name'] ?? '',
      email: map['email'] ?? '',
      avatar: map['avatar'] ?? '',
      token: map['token'] ?? '',
    );
  }
  String toJson() => json.encode(toMap());

  factory User.fromJson(String source) =>
      User.fromMap(json.decode(source) as Map<String, dynamic>);
}
