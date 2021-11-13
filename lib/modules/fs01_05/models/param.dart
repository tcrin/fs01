import 'package:json_annotation/json_annotation.dart';

part 'param.g.dart';
@JsonSerializable()
class Param {
  List? category_id;
  List? lens_id;
  List? camera_id;

  Param({this.category_id, this.lens_id, this.camera_id});

  factory Param.fromJson(Map<String, dynamic> json) => _$ParamFromJson(json);
}
