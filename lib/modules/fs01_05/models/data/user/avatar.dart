import 'package:json_annotation/json_annotation.dart';

part 'avatar.g.dart';
@JsonSerializable()
class Avatar {
  final String? url;
  final int?  org_width;
  final int?  org_height;
  final String?  org_url;
  final  String?  cloud_name;
  final  String?  dominant_color;

  Avatar(
      {this.url,
        this.org_width,
        this.org_height,
        this.org_url,
        this.cloud_name,
        this.dominant_color});

  factory Avatar.fromJson(Map<String, dynamic> json) => _$AvatarFromJson(json);

}