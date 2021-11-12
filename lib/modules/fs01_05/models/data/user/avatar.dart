import 'package:json_annotation/json_annotation.dart';

part 'avatar.g.dart';
@JsonSerializable()
class Avatar {
  @JsonKey(name: 'url', includeIfNull: false)
  final String? url;
  @JsonKey(name: 'org_width', includeIfNull: false)
  final int?  orgWidth;
  @JsonKey(name: 'org_height', includeIfNull: false)
  final int?  orgHeight;
  @JsonKey(name: 'org_url', includeIfNull: false)
  final String?  orgUrl;
  @JsonKey(name: 'cloud_name', includeIfNull: false)
  final  String?  cloudName;
  @JsonKey(name: 'dominant_color', includeIfNull: false)
  final  String?  dominantColor;

  Avatar(
      {this.url,
        this.orgWidth,
        this.orgHeight,
        this.orgUrl,
        this.cloudName,
        this.dominantColor});

  factory Avatar.fromJson(Map<String, dynamic> json) => _$AvatarFromJson(json);

}