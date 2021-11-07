
import 'package:json_annotation/json_annotation.dart';

part 'categories.g.dart';
@JsonSerializable()
class ListOfCategories {
  final int? code;
  final List<Category> category;

  ListOfCategories(this.code, this.category);

  factory ListOfCategories.fromJson(Map<String, dynamic> json) =>
      _$ListOfCategoriesFromJson(json);
}
@JsonSerializable()
class Category {
  final String? id;
  final int? status;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final String? title;
  final String? description;
  final String? images;
  final int? photoCounts;

  Category(
      {this.id,
      this.status,
      this.createdAt,
      this.updatedAt,
      this.title,
      this.description,
      this.images,
      this.photoCounts});

  factory Category.fromJson(Map<String, dynamic> json) =>
      _$CategoryFromJson(json);
}
