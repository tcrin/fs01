import 'package:json_annotation/json_annotation.dart';

part 'images.g.dart';
@JsonSerializable()
class Images {
  @JsonKey(name: 'id', includeIfNull: false)
  final String? id;
  @JsonKey(name: 'url', includeIfNull: false)
  final String? url;
  @JsonKey(name: 'org_width', includeIfNull: false)
  final int? orgWidth;
  @JsonKey(name: 'org_height', includeIfNull: false)
  final int? orgHeight;
  @JsonKey(name: 'org_url', includeIfNull: false)
  final String? orgUrl;
  @JsonKey(name: 'cloud_name', includeIfNull: false)
  final String? cloudName;
  @JsonKey(name: 'dominant_color', includeIfNull: false)
  final String? dominantColor;
  @JsonKey(name: 'file_size', includeIfNull: false)
  final int? fileSize;

  Images(
      {this.id,
      this.url,
      this.orgWidth,
      this.orgHeight,
      this.orgUrl,
      this.cloudName,
      this.dominantColor,
      this.fileSize});
  factory Images.fromJson(Map<String, dynamic> json) => _$ImagesFromJson(json);
}
