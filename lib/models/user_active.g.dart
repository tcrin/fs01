// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_active.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Results _$ResultsFromJson(Map<String, dynamic> json) => Results(
      gender: json['gender'] as String?,
      name: json['name'] as String?,
      email: json['email'] as String?,
      dob: json['dob'] as String?,
      registered: json['registered'] as String?,
      phone: json['phone'] as String?,
      status: json['status'] as String?,
      picture: json['picture'] == null
          ? null
          : Picture.fromJson(json['picture'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ResultsToJson(Results instance) => <String, dynamic>{
      'gender': instance.gender,
      'name': instance.name,
      'email': instance.email,
      'dob': instance.dob,
      'registered': instance.registered,
      'phone': instance.phone,
      'status': instance.status,
      'picture': instance.picture,
    };

Picture _$PictureFromJson(Map<String, dynamic> json) => Picture(
      large: json['large'] as String?,
      medium: json['medium'] as String?,
      thumbnail: json['thumbnail'] as String?,
    );

Map<String, dynamic> _$PictureToJson(Picture instance) => <String, dynamic>{
      'large': instance.large,
      'medium': instance.medium,
      'thumbnail': instance.thumbnail,
    };

UserActive _$UserActiveFromJson(Map<String, dynamic> json) => UserActive(
      (json['results'] as List<dynamic>)
          .map((e) => Results.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$UserActiveToJson(UserActive instance) =>
    <String, dynamic>{
      'results': instance.results,
    };
