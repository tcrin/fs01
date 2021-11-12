// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'images.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Images _$ImagesFromJson(Map<String, dynamic> json) => Images(
      id: json['id'] as String?,
      url: json['url'] as String?,
      orgWidth: json['org_width'] as int?,
      orgHeight: json['org_height'] as int?,
      orgUrl: json['org_url'] as String?,
      cloudName: json['cloud_name'] as String?,
      dominantColor: json['dominant_color'] as String?,
      fileSize: json['file_size'] as int?,
    );

Map<String, dynamic> _$ImagesToJson(Images instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('url', instance.url);
  writeNotNull('org_width', instance.orgWidth);
  writeNotNull('org_height', instance.orgHeight);
  writeNotNull('org_url', instance.orgUrl);
  writeNotNull('cloud_name', instance.cloudName);
  writeNotNull('dominant_color', instance.dominantColor);
  writeNotNull('file_size', instance.fileSize);
  return val;
}
