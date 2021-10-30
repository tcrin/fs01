import 'package:json_annotation/json_annotation.dart';
part 'user_message.g.dart';

@JsonSerializable()
class Results {
  final String? id;
  final String? text;
  final User? user;
  final int? reply_count;
  final int? unread_count;
  final String? created_at;

  Results(
      {this.id,
      this.text,
      this.user,
      this.reply_count,
      this.unread_count,
      this.created_at});

  factory Results.fromJson(Map<String, dynamic> json) =>
      _$ResultsFromJson(json);
}

@JsonSerializable()
class User {
  final String? gender;
  final String? name;
  final String? email;
  final String? dob;
  final String? registered;
  final String? phone;
  final String? status;
  final Picture? picture;

  User(
      {this.gender,
      this.name,
      this.email,
      this.dob,
      this.registered,
      this.phone,
      this.status,
      this.picture});

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}

@JsonSerializable()
class Picture {
  final String? large;
  final String? medium;
  final String? thumbnail;

  Picture({this.large, this.medium, this.thumbnail});

  factory Picture.fromJson(Map<String, dynamic> json) =>
      _$PictureFromJson(json);
}

@JsonSerializable()
class UserMessage {
  final List<Results> results;

  UserMessage(this.results);

  factory UserMessage.fromJson(Map<String, dynamic> json) =>
      _$UserMessageFromJson(json);

}
