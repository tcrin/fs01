import 'package:json_annotation/json_annotation.dart';

part 'param.g.dart';
@JsonSerializable()
class Param {
  @JsonKey(name: 'category_id', includeIfNull: false)
  List? categoryId;
  @JsonKey(name: 'lens_id', includeIfNull: false)
  List? lensId;
  @JsonKey(name: 'camera_id', includeIfNull: false)
  List? cameraId;

  Param({this.categoryId, this.lensId, this.cameraId});

  factory Param.fromJson(Map<String, dynamic> json) => _$ParamFromJson(json);
}
