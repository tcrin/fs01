// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paging.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Paging _$PagingFromJson(Map<String, dynamic> json) => Paging(
      next_cursor: json['next_cursor'] as String?,
      cursor: json['cursor'] as String?,
      limit: json['limit'] as int?,
      total: json['total'] as int?,
      page: json['page'] as int?,
      has_next: json['has_next'] as bool?,
    );

Map<String, dynamic> _$PagingToJson(Paging instance) => <String, dynamic>{
      'next_cursor': instance.next_cursor,
      'cursor': instance.cursor,
      'limit': instance.limit,
      'total': instance.total,
      'page': instance.page,
      'has_next': instance.has_next,
    };
