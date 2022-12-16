// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class UserModel {
  final String id;
  final String name;
  final String user;
  final String email;
  final String phone;
  final String password;  
  const UserModel({
    required this.id,
    required this.name,
    required this.user,
    required this.email,
    required this.phone,
    required this.password,
  });

  UserModel copyWith({
    String? id,
    String? name,
    String? user,
    String? email,
    String? phone,
    String? password,
  }) {
    return UserModel(
      id: id ?? this.id,
      name: name ?? this.name,
      user: user ?? this.user,
      email: email ?? this.email,
      phone: phone ?? this.phone,
      password: password ?? this.password,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'user': user,
      'email': email,
      'phone': phone,
      'password': password,
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      id: (map["id"] ?? '') as String,
      name: (map["name"] ?? '') as String,
      user: (map["user"] ?? '') as String,
      email: (map["email"] ?? '') as String,
      phone: (map["phone"] ?? '') as String,
      password: (map["password"] ?? '') as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory UserModel.fromJson(String source) => UserModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'UserModel(id: $id, name: $name, user: $user, email: $email, phone: $phone, password: $password)';
  }

  @override
  bool operator ==(covariant UserModel other) {
    if (identical(this, other)) return true;
  
    return 
      other.id == id &&
      other.name == name &&
      other.user == user &&
      other.email == email &&
      other.phone == phone &&
      other.password == password;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      name.hashCode ^
      user.hashCode ^
      email.hashCode ^
      phone.hashCode ^
      password.hashCode;
  }
}
