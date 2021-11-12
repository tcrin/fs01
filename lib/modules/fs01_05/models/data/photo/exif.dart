import 'package:json_annotation/json_annotation.dart';

part 'exif.g.dart';

@JsonSerializable()
class Exif {
  @JsonKey(name: 'make', includeIfNull: false)
  final String? make;
  @JsonKey(name: 'model', includeIfNull: false)
  final String? model;
  @JsonKey(name: 'flash', includeIfNull: false)
  final String? flash;
  @JsonKey(name: 'FNumber', includeIfNull: false)
  final String? fNumber;
  @JsonKey(name: 'DateTimeOriginal', includeIfNull: false)
  final DateTime? dateTimeOriginal;
  @JsonKey(name: 'LensMake', includeIfNull: false)
  final String? lensMake;
  @JsonKey(name: 'LensModel', includeIfNull: false)
  final String? lensModel;
  @JsonKey(name: 'FocalLength', includeIfNull: false)
  final String? focalLength;
  @JsonKey(name: 'FocalLengthIn35mmFilm', includeIfNull: false)
  final String? focalLengthIn35mmFilm;
  @JsonKey(name: 'ExposureMode', includeIfNull: false)
  final String? exposureMode;
  @JsonKey(name: 'ExposureTime', includeIfNull: false)
  final String? exposureTime;
  @JsonKey(name: 'MeteringMode', includeIfNull: false)
  final String? meteringMode;
  @JsonKey(name: 'ISOSpeedRatings', includeIfNull: false)
  final String? iSOSpeedRatings;
  @JsonKey(name: 'GPSLatitude', includeIfNull: false)
  final double? gPSLatitude;
  @JsonKey(name: 'GPSLongitude', includeIfNull: false)
  final double? gPSLongitude;

  Exif(
      {this.make,
      this.model,
      this.flash,
      this.fNumber,
      this.dateTimeOriginal,
      this.lensMake,
      this.lensModel,
      this.focalLength,
      this.focalLengthIn35mmFilm,
      this.exposureMode,
      this.exposureTime,
      this.meteringMode,
      this.iSOSpeedRatings,
      this.gPSLatitude,
      this.gPSLongitude});

  factory Exif.fromJson(Map<String, dynamic> json) => _$ExifFromJson(json);
}
