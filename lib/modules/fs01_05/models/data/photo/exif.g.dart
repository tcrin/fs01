// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exif.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Exif _$ExifFromJson(Map<String, dynamic> json) => Exif(
      make: json['make'] as String?,
      model: json['model'] as String?,
      flash: json['flash'] as String?,
      fNumber: json['FNumber'] as String?,
      dateTimeOriginal: json['DateTimeOriginal'] == null
          ? null
          : DateTime.parse(json['DateTimeOriginal'] as String),
      lensMake: json['LensMake'] as String?,
      lensModel: json['LensModel'] as String?,
      focalLength: json['FocalLength'] as String?,
      focalLengthIn35mmFilm: json['FocalLengthIn35mmFilm'] as String?,
      exposureMode: json['ExposureMode'] as String?,
      exposureTime: json['ExposureTime'] as String?,
      meteringMode: json['MeteringMode'] as String?,
      iSOSpeedRatings: json['ISOSpeedRatings'] as String?,
      gPSLatitude: (json['GPSLatitude'] as num?)?.toDouble(),
      gPSLongitude: (json['GPSLongitude'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$ExifToJson(Exif instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('make', instance.make);
  writeNotNull('model', instance.model);
  writeNotNull('flash', instance.flash);
  writeNotNull('FNumber', instance.fNumber);
  writeNotNull(
      'DateTimeOriginal', instance.dateTimeOriginal?.toIso8601String());
  writeNotNull('LensMake', instance.lensMake);
  writeNotNull('LensModel', instance.lensModel);
  writeNotNull('FocalLength', instance.focalLength);
  writeNotNull('FocalLengthIn35mmFilm', instance.focalLengthIn35mmFilm);
  writeNotNull('ExposureMode', instance.exposureMode);
  writeNotNull('ExposureTime', instance.exposureTime);
  writeNotNull('MeteringMode', instance.meteringMode);
  writeNotNull('ISOSpeedRatings', instance.iSOSpeedRatings);
  writeNotNull('GPSLatitude', instance.gPSLatitude);
  writeNotNull('GPSLongitude', instance.gPSLongitude);
  return val;
}
