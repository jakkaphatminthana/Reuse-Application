import 'dart:ffi';

class Profile {
  late String email;
  late String password;
  late String name;
}

class UserModel {
  String? id;
  String? email;
  String? name;
  String? images;
  String? address;
  String? role;
  Float? point;

  UserModel({
    this.id,
    this.email,
    this.name,
    this.images,
    this.address,
    this.role,
    this.point,
  });

  factory UserModel.fromMap(Map<String, dynamic>? users) {
    String id = users?['id'];
    String email = users?['email'];
    String name = users?['name'];
    String images = users?['images'];
    String address = users?['address'];
    String role = users?['role'];
    Float point = users?['point'];
    return UserModel(
      id: id,
      email: email,
      name: name,
      images: images,
      address: address,
      role: role,
      point: point,
    );
  }
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'email': email,
      'name': name,
      'images': images,
      'address': address,
      'role': role,
      'point':point,
    };
  }
}
