import 'package:json_annotation/json_annotation.dart';

part 'image.g.dart';

@JsonSerializable()
class Image {
  final String? url;
  final int? org_width;
  final int? org_height;
  final String? org_url;
  final String? cloud_name;
  final String? dominant_color;
  final int? file_size;

  Image(
      {this.url,
      this.org_width,
      this.org_height,
      this.org_url,
      this.cloud_name,
      this.dominant_color,
      this.file_size});
  factory Image.fromJson(Map<String, dynamic> json) => _$ImageFromJson(json);
}
