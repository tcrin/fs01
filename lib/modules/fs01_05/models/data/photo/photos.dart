import 'package:fs01/modules/fs01_05/models/data/user/user.dart';

import 'exif.dart';
import 'image.dart';
import 'package:json_annotation/json_annotation.dart';

part 'photos.g.dart';
@JsonSerializable()
class Photos {
  final String? id;
  final int? status;
  final DateTime? created_at;
  final DateTime? updated_at;
  final String? title;
  final String? description;
  final Image? image;
  final Exif? exif;
  final List<String>? tags;
  final int? comment_counts;
  final int? like_counts;
  final int? view_counts;
  final int? collection_counts;
  final int? pulse_score;
  final String? pulse_type;
  final bool? is_private;
  final bool? is_sensitive;
  final int? storage_length;
  final User? user;
  final bool? liked;

  Photos(
      {this.id,
      this.status,
      this.created_at,
      this.updated_at,
      this.title,
      this.description,
      this.image,
      this.exif,
      this.tags,
      this.comment_counts,
      this.like_counts,
      this.view_counts,
      this.collection_counts,
      this.pulse_score,
      this.pulse_type,
      this.is_private,
      this.is_sensitive,
      this.storage_length,
      this.user,
      this.liked});

  factory Photos.fromJson(Map<String, dynamic> json) => _$PhotosFromJson(json);
}
