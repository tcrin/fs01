// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Results _$ResultsFromJson(Map<String, dynamic> json) => Results(
      id: json['id'] as String?,
      text: json['text'] as String?,
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
      reply_count: json['reply_count'] as int?,
      unread_count: json['unread_count'] as int?,
      created_at: json['created_at'] as String?,
    );

Map<String, dynamic> _$ResultsToJson(Results instance) => <String, dynamic>{
      'id': instance.id,
      'text': instance.text,
      'user': instance.user,
      'reply_count': instance.reply_count,
      'unread_count': instance.unread_count,
      'created_at': instance.created_at,
    };

User _$UserFromJson(Map<String, dynamic> json) => User(
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

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
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

UserMessage _$UserMessageFromJson(Map<String, dynamic> json) => UserMessage(
      (json['results'] as List<dynamic>)
          .map((e) => Results.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$UserMessageToJson(UserMessage instance) =>
    <String, dynamic>{
      'results': instance.results,
    };
