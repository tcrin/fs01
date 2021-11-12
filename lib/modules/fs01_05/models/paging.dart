import 'package:json_annotation/json_annotation.dart';

part 'paging.g.dart';

@JsonSerializable()
class Paging {
  @JsonKey(name: 'next_cursor', includeIfNull: false)
  final String? nextCursor;
  @JsonKey(name: 'cursor', includeIfNull: false)
  final String? cursor;
  @JsonKey(name: 'limit', includeIfNull: false)
  final int? limit;
  @JsonKey(name: 'total', includeIfNull: false)
  final int? total;
  @JsonKey(name: 'page', includeIfNull: false)
  final int? page;
  @JsonKey(name: 'has_next', includeIfNull: false)
  final bool? hasNext;

  Paging(
      {this.nextCursor,
      this.cursor,
      this.limit,
      this.total,
      this.page,
      this.hasNext});

  factory Paging.fromJson(Map<String, dynamic> json) => _$PagingFromJson(json);
}
