// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'categories.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ListOfCategories _$ListOfCategoriesFromJson(Map<String, dynamic> json) =>
    ListOfCategories(
      json['code'] as int?,
      (json['category'] as List<dynamic>)
          .map((e) => Category.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ListOfCategoriesToJson(ListOfCategories instance) =>
    <String, dynamic>{
      'code': instance.code,
      'category': instance.category,
    };

Category _$CategoryFromJson(Map<String, dynamic> json) => Category(
      id: json['id'] as String?,
      status: json['status'] as int?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      title: json['title'] as String?,
      description: json['description'] as String?,
      images: json['images'] as String?,
      photoCounts: json['photoCounts'] as int?,
    );

Map<String, dynamic> _$CategoryToJson(Category instance) => <String, dynamic>{
      'id': instance.id,
      'status': instance.status,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'title': instance.title,
      'description': instance.description,
      'images': instance.images,
      'photoCounts': instance.photoCounts,
    };
