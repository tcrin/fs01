// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Data _$DataFromJson(Map<String, dynamic> json) => Data(
      id: json['id'] as String?,
      status: json['status'] as int?,
      created_at: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updated_at: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      title: json['title'] as String?,
      description: json['description'] as String?,
      comment_counts: json['comment_counts'] as int?,
      images: (json['images'] as List<dynamic>?)
          ?.map((e) => Images.fromJson(e as Map<String, dynamic>))
          .toList(),
      like_counts: json['like_counts'] as int?,
      view_counts: json['view_counts'] as int?,
      pulse_score: json['pulse_score'] as int?,
      is_sensitive: json['is_sensitive'] as bool?,
      is_private: json['is_private'] as bool?,
      tags: (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList(),
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
      category: json['category'] == null
          ? null
          : Category.fromJson(json['category'] as Map<String, dynamic>),
      photos: (json['photos'] as List<dynamic>?)
          ?.map((e) => Photos.fromJson(e as Map<String, dynamic>))
          .toList(),
      liked: json['liked'] as bool?,
    );

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'id': instance.id,
      'status': instance.status,
      'created_at': instance.created_at?.toIso8601String(),
      'updated_at': instance.updated_at?.toIso8601String(),
      'title': instance.title,
      'description': instance.description,
      'comment_counts': instance.comment_counts,
      'images': instance.images,
      'like_counts': instance.like_counts,
      'view_counts': instance.view_counts,
      'pulse_score': instance.pulse_score,
      'is_sensitive': instance.is_sensitive,
      'is_private': instance.is_private,
      'tags': instance.tags,
      'user': instance.user,
      'category': instance.category,
      'photos': instance.photos,
      'liked': instance.liked,
    };
