import 'package:json_annotation/json_annotation.dart';

part 'images.g.dart';
@JsonSerializable()
class Images {
  final String? id;
  final String? url;
  final int? org_width;
  final int? org_height;
  final String? org_url;
  final String? cloud_name;
  final String? dominant_color;
  final int? file_size;

  Images(
      {this.id,
      this.url,
      this.org_width,
      this.org_height,
      this.org_url,
      this.cloud_name,
      this.dominant_color,
      this.file_size});
  factory Images.fromJson(Map<String, dynamic> json) => _$ImagesFromJson(json);
}
