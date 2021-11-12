import 'avatar.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';

@JsonSerializable()
class User {
  @JsonKey(name: 'id', includeIfNull: false)
  final String? id;
  @JsonKey(name: 'username', includeIfNull: false)
  final String? username;
  @JsonKey(name: 'first_name', includeIfNull: false)
  final String? firstName;
  @JsonKey(name: 'last_name', includeIfNull: false)
  final String? lastName;
  @JsonKey(name: 'avatar', includeIfNull: false)
  final Avatar? avatar;
  @JsonKey(name: 'system_role', includeIfNull: false)
  final String? systemRole;
  @JsonKey(name: 'is_verified', includeIfNull: false)
  final bool? isVerified;
  @JsonKey(name: 'created_at', includeIfNull: false)
  final String? createdAt;

  User(
      {this.id,
      this.username,
      this.firstName,
      this.lastName,
      this.avatar,
      this.systemRole,
      this.isVerified,
      this.createdAt});

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
