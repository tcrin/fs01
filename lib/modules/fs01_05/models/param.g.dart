// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'param.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Param _$ParamFromJson(Map<String, dynamic> json) => Param(
      categoryId: json['category_id'] as List<dynamic>?,
      lensId: json['lens_id'] as List<dynamic>?,
      cameraId: json['camera_id'] as List<dynamic>?,
    );

Map<String, dynamic> _$ParamToJson(Param instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('category_id', instance.categoryId);
  writeNotNull('lens_id', instance.lensId);
  writeNotNull('camera_id', instance.cameraId);
  return val;
}
