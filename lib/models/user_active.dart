import 'package:json_annotation/json_annotation.dart';

part 'user_active.g.dart';

@JsonSerializable()
class Results {
  final String? gender;
  final String? name;
  final String? email;
  final String? dob;
  final String? registered;
  final String? phone;
  final String? status;
  final Picture? picture;

  Results(
      {this.gender,
      this.name,
      this.email,
      this.dob,
      this.registered,
      this.phone,
      this.status,
      this.picture});

  factory Results.fromJson(Map<String, dynamic> json) =>
      _$ResultsFromJson(json);
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
class UserActive {
  final List<Results> results;

  UserActive(this.results);

  factory UserActive.fromJson(Map<String, dynamic> json) =>
      _$UserActiveFromJson(json);
}

//flutter pub run build_runner build