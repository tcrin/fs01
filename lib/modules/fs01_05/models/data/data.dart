import 'package:fs01/modules/fs01_05/models/data/photo/photos.dart';
import 'package:fs01/modules/fs01_05/models/data/user/user.dart';

import 'category.dart';
import 'images.dart';
import 'package:json_annotation/json_annotation.dart';

part 'data.g.dart';

@JsonSerializable()
class Data {
  final String? id;
  final int? status;
  final DateTime? created_at;
  final DateTime? updated_at;
  final String? title;
  final String? description;
  final int? comment_counts;
  final List<Images>? images;
  final int? like_counts;
  final int? view_counts;
  final int? pulse_score;
  final bool? is_sensitive;
  final bool? is_private;
  final List<String>? tags;
  final User? user;
  final Category? category;
  final List<Photos>? photos;
  final bool? liked;

  Data(
      {this.id,
      this.status,
      this.created_at,
      this.updated_at,
      this.title,
      this.description,
      this.comment_counts,
      this.images,
      this.like_counts,
      this.view_counts,
      this.pulse_score,
      this.is_sensitive,
      this.is_private,
      this.tags,
      this.user,
      this.category,
      this.photos,
      this.liked});

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}
