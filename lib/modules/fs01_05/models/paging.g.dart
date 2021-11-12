// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paging.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Paging _$PagingFromJson(Map<String, dynamic> json) => Paging(
      nextCursor: json['next_cursor'] as String?,
      cursor: json['cursor'] as String?,
      limit: json['limit'] as int?,
      total: json['total'] as int?,
      page: json['page'] as int?,
      hasNext: json['has_next'] as bool?,
    );

Map<String, dynamic> _$PagingToJson(Paging instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('next_cursor', instance.nextCursor);
  writeNotNull('cursor', instance.cursor);
  writeNotNull('limit', instance.limit);
  writeNotNull('total', instance.total);
  writeNotNull('page', instance.page);
  writeNotNull('has_next', instance.hasNext);
  return val;
}
