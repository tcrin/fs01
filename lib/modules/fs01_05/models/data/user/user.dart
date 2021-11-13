import 'avatar.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';

@JsonSerializable()
class User {
  final String? id;
  final String? username;
  final String? first_name;
  final String? last_name;
  final Avatar? avatar;
  final String? system_role;
  final bool? is_verified;
  final String? created_at;

  User(
      {this.id,
      this.username,
      this.first_name,
      this.last_name,
      this.avatar,
      this.system_role,
      this.is_verified,
      this.created_at});

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
