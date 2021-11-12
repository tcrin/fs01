// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Data _$DataFromJson(Map<String, dynamic> json) => Data(
      id: json['id'] as String?,
      status: json['status'] as int?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      title: json['title'] as String?,
      description: json['description'] as String?,
      commentCounts: json['comment_counts'] as int?,
      images: (json['images'] as List<dynamic>?)
          ?.map((e) => Images.fromJson(e as Map<String, dynamic>))
          .toList(),
      likeCounts: json['like_counts'] as int?,
      viewCounts: json['view_counts'] as int?,
      pulseScore: json['pulse_score'] as int?,
      isSensitive: json['is_sensitive'] as bool?,
      isPrivate: json['is_private'] as bool?,
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

Map<String, dynamic> _$DataToJson(Data instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('status', instance.status);
  writeNotNull('created_at', instance.createdAt?.toIso8601String());
  writeNotNull('updated_at', instance.updatedAt?.toIso8601String());
  writeNotNull('title', instance.title);
  writeNotNull('description', instance.description);
  writeNotNull('comment_counts', instance.commentCounts);
  writeNotNull('images', instance.images);
  writeNotNull('like_counts', instance.likeCounts);
  writeNotNull('view_counts', instance.viewCounts);
  writeNotNull('pulse_score', instance.pulseScore);
  writeNotNull('is_sensitive', instance.isSensitive);
  writeNotNull('is_private', instance.isPrivate);
  writeNotNull('tags', instance.tags);
  writeNotNull('user', instance.user);
  writeNotNull('category', instance.category);
  writeNotNull('photos', instance.photos);
  writeNotNull('liked', instance.liked);
  return val;
}
