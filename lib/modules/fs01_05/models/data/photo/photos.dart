import 'package:fs01/modules/fs01_05/models/data/user/user.dart';

import 'exif.dart';
import 'image.dart';
import 'package:json_annotation/json_annotation.dart';

part 'photos.g.dart';
@JsonSerializable()
class Photos {
  @JsonKey(name: 'id', includeIfNull: false)
  final String? id;
  @JsonKey(name: 'status', includeIfNull: false)
  final int? status;
  @JsonKey(name: 'created_at', includeIfNull: false)
  final DateTime? createdAt;
  @JsonKey(name: 'updated_at', includeIfNull: false)
  final DateTime? updatedAt;
  @JsonKey(name: 'title', includeIfNull: false)
  final String? title;
  @JsonKey(name: 'description', includeIfNull: false)
  final String? description;
  @JsonKey(name: 'image', includeIfNull: false)
  final Image? image;
  @JsonKey(name: 'exif', includeIfNull: false)
  final Exif? exif;
  @JsonKey(name: 'tags', includeIfNull: false)
  final List<String>? tags;
  @JsonKey(name: 'comment_counts', includeIfNull: false)
  final int? commentCounts;
  @JsonKey(name: 'like_counts', includeIfNull: false)
  final int? likeCounts;
  @JsonKey(name: 'view_counts', includeIfNull: false)
  final int? viewCounts;
  @JsonKey(name: 'collection_counts', includeIfNull: false)
  final int? collectionCounts;
  @JsonKey(name: 'pulse_score', includeIfNull: false)
  final int? pulseScore;
  @JsonKey(name: 'pulse_type', includeIfNull: false)
  final String? pulseType;
  @JsonKey(name: 'is_private', includeIfNull: false)
  final bool? isPrivate;
  @JsonKey(name: 'is_sensitive', includeIfNull: false)
  final bool? isSensitive;
  @JsonKey(name: 'storage_length', includeIfNull: false)
  final int? storageLength;
  @JsonKey(name: 'user', includeIfNull: false)
  final User? user;
  @JsonKey(name: 'liked', includeIfNull: false)
  final bool? liked;

  Photos(
      {this.id,
      this.status,
      this.createdAt,
      this.updatedAt,
      this.title,
      this.description,
      this.image,
      this.exif,
      this.tags,
      this.commentCounts,
      this.likeCounts,
      this.viewCounts,
      this.collectionCounts,
      this.pulseScore,
      this.pulseType,
      this.isPrivate,
      this.isSensitive,
      this.storageLength,
      this.user,
      this.liked});

  factory Photos.fromJson(Map<String, dynamic> json) => _$PhotosFromJson(json);
}
