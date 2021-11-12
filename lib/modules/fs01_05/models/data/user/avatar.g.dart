// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'avatar.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Avatar _$AvatarFromJson(Map<String, dynamic> json) => Avatar(
      url: json['url'] as String?,
      orgWidth: json['org_width'] as int?,
      orgHeight: json['org_height'] as int?,
      orgUrl: json['org_url'] as String?,
      cloudName: json['cloud_name'] as String?,
      dominantColor: json['dominant_color'] as String?,
    );

Map<String, dynamic> _$AvatarToJson(Avatar instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('url', instance.url);
  writeNotNull('org_width', instance.orgWidth);
  writeNotNull('org_height', instance.orgHeight);
  writeNotNull('org_url', instance.orgUrl);
  writeNotNull('cloud_name', instance.cloudName);
  writeNotNull('dominant_color', instance.dominantColor);
  return val;
}
