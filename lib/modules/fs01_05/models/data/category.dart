import 'package:json_annotation/json_annotation.dart';

part 'category.g.dart';
@JsonSerializable()
class Category {
  @JsonKey(name: 'id', includeIfNull: false)
  final String? id;
  @JsonKey(name: 'title', includeIfNull: false)
  final String? title;

  Category({this.id, this.title});
  factory Category.fromJson(Map<String, dynamic> json) => _$CategoryFromJson(json);
}