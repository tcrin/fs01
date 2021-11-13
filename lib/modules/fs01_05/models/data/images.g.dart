// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'images.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Images _$ImagesFromJson(Map<String, dynamic> json) => Images(
      id: json['id'] as String?,
      url: json['url'] as String?,
      org_width: json['org_width'] as int?,
      org_height: json['org_height'] as int?,
      org_url: json['org_url'] as String?,
      cloud_name: json['cloud_name'] as String?,
      dominant_color: json['dominant_color'] as String?,
      file_size: json['file_size'] as int?,
    );

Map<String, dynamic> _$ImagesToJson(Images instance) => <String, dynamic>{
      'id': instance.id,
      'url': instance.url,
      'org_width': instance.org_width,
      'org_height': instance.org_height,
      'org_url': instance.org_url,
      'cloud_name': instance.cloud_name,
      'dominant_color': instance.dominant_color,
      'file_size': instance.file_size,
    };
