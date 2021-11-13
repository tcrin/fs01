// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'image.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Image _$ImageFromJson(Map<String, dynamic> json) => Image(
      url: json['url'] as String?,
      org_width: json['org_width'] as int?,
      org_height: json['org_height'] as int?,
      org_url: json['org_url'] as String?,
      cloud_name: json['cloud_name'] as String?,
      dominant_color: json['dominant_color'] as String?,
      file_size: json['file_size'] as int?,
    );

Map<String, dynamic> _$ImageToJson(Image instance) => <String, dynamic>{
      'url': instance.url,
      'org_width': instance.org_width,
      'org_height': instance.org_height,
      'org_url': instance.org_url,
      'cloud_name': instance.cloud_name,
      'dominant_color': instance.dominant_color,
      'file_size': instance.file_size,
    };
