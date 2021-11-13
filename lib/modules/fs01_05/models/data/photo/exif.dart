import 'package:json_annotation/json_annotation.dart';

part 'exif.g.dart';

@JsonSerializable()
class Exif {
  final String? make;
  final String? model;
  final String? flash;
  final String? FNumber;
  final String? DateTimeOriginal;
  final String? LensMake;
  final String? LensModel;
  final String? FocalLength;
  final String? FocalLengthIn35mmFilm;
  final String? ExposureMode;
  final String? ExposureTime;
  final String? MeteringMode;
  final String? ISOSpeedRatings;
  final double? GPSLatitude;
  final double? GPSLongitude;

  Exif(
      {this.make,
      this.model,
      this.flash,
      this.FNumber,
      this.DateTimeOriginal,
      this.LensMake,
      this.LensModel,
      this.FocalLength,
      this.FocalLengthIn35mmFilm,
      this.ExposureMode,
      this.ExposureTime,
      this.MeteringMode,
      this.ISOSpeedRatings,
      this.GPSLatitude,
      this.GPSLongitude});

  factory Exif.fromJson(Map<String, dynamic> json) => _$ExifFromJson(json);
}
