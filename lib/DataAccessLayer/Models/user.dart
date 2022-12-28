import 'dart:convert';

class User {
  final int id;
  final String mobileNumber;
  final String name;
  final String email;
  final String avatar;
  final String address;
  final String token;
  User({
    required this.id,
    required this.mobileNumber,
    required this.name,
    required this.email,
    required this.avatar,
    required this.address,
    required this.token,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'mobile_number': mobileNumber,
      'name': name,
      'email': email,
      'avatar': avatar,
      'address': address,
      'token': token
    };
  }

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      id: map['user']['id']?.toInt() ?? 0,
      mobileNumber: map['user']['mobile_number'] ?? '',
      name: map['user']['name'] ?? '',
      email: map['user']['email'] ?? '',
      avatar: map['user']['avatar'] ?? '',
      address: map['user']['address'] ?? '',
      token: map['token'] ?? '',
    );
  }
  factory User.fromBoxMap(Map<String, dynamic> map) {
    return User(
      id: map['id']?.toInt() ?? 0,
      mobileNumber: map['mobile_number'] ?? '',
      name: map['name'] ?? '',
      email: map['email'] ?? '',
      avatar: map['avatar'] ?? '',
      address: map['address'] ?? '',
      token: map['token'] ?? '',
    );
  }
  String toJson() => json.encode(toMap());
  factory User.fromJson(String source) =>
      User.fromMap(json.decode(source) as Map<String, dynamic>);
}
