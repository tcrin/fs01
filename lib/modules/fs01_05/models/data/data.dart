import 'package:fs01/modules/fs01_05/models/data/photo/photos.dart';
import 'package:fs01/modules/fs01_05/models/data/user/user.dart';

import 'category.dart';
import 'images.dart';
import 'package:json_annotation/json_annotation.dart';

part 'data.g.dart';

@JsonSerializable()
class Data {
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
  @JsonKey(name: 'comment_counts', includeIfNull: false)
  final int? commentCounts;
  @JsonKey(name: 'images', includeIfNull: false)
  final List<Images>? images;
  @JsonKey(name: 'like_counts', includeIfNull: false)
  final int? likeCounts;
  @JsonKey(name: 'view_counts', includeIfNull: false)
  final int? viewCounts;
  @JsonKey(name: 'pulse_score', includeIfNull: false)
  final int? pulseScore;
  @JsonKey(name: 'is_sensitive', includeIfNull: false)
  final bool? isSensitive;
  @JsonKey(name: 'is_private', includeIfNull: false)
  final bool? isPrivate;
  @JsonKey(name: 'tags', includeIfNull: false)
  final List<String>? tags;
  @JsonKey(name: 'user', includeIfNull: false)
  final User? user;
  @JsonKey(name: 'category', includeIfNull: false)
  final Category? category;
  @JsonKey(name: 'photos', includeIfNull: false)
  final List<Photos>? photos;
  @JsonKey(name: 'liked', includeIfNull: false)
  final bool? liked;

  Data(
      {this.id,
      this.status,
      this.createdAt,
      this.updatedAt,
      this.title,
      this.description,
      this.commentCounts,
      this.images,
      this.likeCounts,
      this.viewCounts,
      this.pulseScore,
      this.isSensitive,
      this.isPrivate,
      this.tags,
      this.user,
      this.category,
      this.photos,
      this.liked});

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}
