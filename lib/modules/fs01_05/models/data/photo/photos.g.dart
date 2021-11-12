// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'photos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Photos _$PhotosFromJson(Map<String, dynamic> json) => Photos(
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
      image: json['image'] == null
          ? null
          : Image.fromJson(json['image'] as Map<String, dynamic>),
      exif: json['exif'] == null
          ? null
          : Exif.fromJson(json['exif'] as Map<String, dynamic>),
      tags: (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList(),
      commentCounts: json['comment_counts'] as int?,
      likeCounts: json['like_counts'] as int?,
      viewCounts: json['view_counts'] as int?,
      collectionCounts: json['collection_counts'] as int?,
      pulseScore: json['pulse_score'] as int?,
      pulseType: json['pulse_type'] as String?,
      isPrivate: json['is_private'] as bool?,
      isSensitive: json['is_sensitive'] as bool?,
      storageLength: json['storage_length'] as int?,
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
      liked: json['liked'] as bool?,
    );

Map<String, dynamic> _$PhotosToJson(Photos instance) {
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
  writeNotNull('image', instance.image);
  writeNotNull('exif', instance.exif);
  writeNotNull('tags', instance.tags);
  writeNotNull('comment_counts', instance.commentCounts);
  writeNotNull('like_counts', instance.likeCounts);
  writeNotNull('view_counts', instance.viewCounts);
  writeNotNull('collection_counts', instance.collectionCounts);
  writeNotNull('pulse_score', instance.pulseScore);
  writeNotNull('pulse_type', instance.pulseType);
  writeNotNull('is_private', instance.isPrivate);
  writeNotNull('is_sensitive', instance.isSensitive);
  writeNotNull('storage_length', instance.storageLength);
  writeNotNull('user', instance.user);
  writeNotNull('liked', instance.liked);
  return val;
}
