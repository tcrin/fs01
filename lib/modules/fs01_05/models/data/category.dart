import 'package:json_annotation/json_annotation.dart';

part 'category.g.dart';
@JsonSerializable()
class Category {
  final String? id;
  final String? title;

  Category({this.id, this.title});
  factory Category.fromJson(Map<String, dynamic> json) => _$CategoryFromJson(json);
}