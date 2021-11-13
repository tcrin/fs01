// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'param.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Param _$ParamFromJson(Map<String, dynamic> json) => Param(
      category_id: json['category_id'] as List<dynamic>?,
      lens_id: json['lens_id'] as List<dynamic>?,
      camera_id: json['camera_id'] as List<dynamic>?,
    );

Map<String, dynamic> _$ParamToJson(Param instance) => <String, dynamic>{
      'category_id': instance.category_id,
      'lens_id': instance.lens_id,
      'camera_id': instance.camera_id,
    };
