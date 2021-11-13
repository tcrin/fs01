// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exif.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Exif _$ExifFromJson(Map<String, dynamic> json) => Exif(
      make: json['make'] as String?,
      model: json['model'] as String?,
      flash: json['flash'] as String?,
      FNumber: json['FNumber'] as String?,
      DateTimeOriginal: json['DateTimeOriginal'] as String?,
      LensMake: json['LensMake'] as String?,
      LensModel: json['LensModel'] as String?,
      FocalLength: json['FocalLength'] as String?,
      FocalLengthIn35mmFilm: json['FocalLengthIn35mmFilm'] as String?,
      ExposureMode: json['ExposureMode'] as String?,
      ExposureTime: json['ExposureTime'] as String?,
      MeteringMode: json['MeteringMode'] as String?,
      ISOSpeedRatings: json['ISOSpeedRatings'] as String?,
      GPSLatitude: (json['GPSLatitude'] as num?)?.toDouble(),
      GPSLongitude: (json['GPSLongitude'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$ExifToJson(Exif instance) => <String, dynamic>{
      'make': instance.make,
      'model': instance.model,
      'flash': instance.flash,
      'FNumber': instance.FNumber,
      'DateTimeOriginal': instance.DateTimeOriginal,
      'LensMake': instance.LensMake,
      'LensModel': instance.LensModel,
      'FocalLength': instance.FocalLength,
      'FocalLengthIn35mmFilm': instance.FocalLengthIn35mmFilm,
      'ExposureMode': instance.ExposureMode,
      'ExposureTime': instance.ExposureTime,
      'MeteringMode': instance.MeteringMode,
      'ISOSpeedRatings': instance.ISOSpeedRatings,
      'GPSLatitude': instance.GPSLatitude,
      'GPSLongitude': instance.GPSLongitude,
    };
