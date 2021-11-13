// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'photos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Photos _$PhotosFromJson(Map<String, dynamic> json) => Photos(
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
      image: json['image'] == null
          ? null
          : Image.fromJson(json['image'] as Map<String, dynamic>),
      exif: json['exif'] == null
          ? null
          : Exif.fromJson(json['exif'] as Map<String, dynamic>),
      tags: (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList(),
      comment_counts: json['comment_counts'] as int?,
      like_counts: json['like_counts'] as int?,
      view_counts: json['view_counts'] as int?,
      collection_counts: json['collection_counts'] as int?,
      pulse_score: json['pulse_score'] as int?,
      pulse_type: json['pulse_type'] as String?,
      is_private: json['is_private'] as bool?,
      is_sensitive: json['is_sensitive'] as bool?,
      storage_length: json['storage_length'] as int?,
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
      liked: json['liked'] as bool?,
    );

Map<String, dynamic> _$PhotosToJson(Photos instance) => <String, dynamic>{
      'id': instance.id,
      'status': instance.status,
      'created_at': instance.created_at?.toIso8601String(),
      'updated_at': instance.updated_at?.toIso8601String(),
      'title': instance.title,
      'description': instance.description,
      'image': instance.image,
      'exif': instance.exif,
      'tags': instance.tags,
      'comment_counts': instance.comment_counts,
      'like_counts': instance.like_counts,
      'view_counts': instance.view_counts,
      'collection_counts': instance.collection_counts,
      'pulse_score': instance.pulse_score,
      'pulse_type': instance.pulse_type,
      'is_private': instance.is_private,
      'is_sensitive': instance.is_sensitive,
      'storage_length': instance.storage_length,
      'user': instance.user,
      'liked': instance.liked,
    };
