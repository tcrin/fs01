import 'package:json_annotation/json_annotation.dart';

part 'paging.g.dart';

@JsonSerializable()
class Paging {
  final String? next_cursor;
  final String? cursor;
  final int? limit;
  final int? total;
  final int? page;
  final bool? has_next;

  Paging(
      {this.next_cursor,
      this.cursor,
      this.limit,
      this.total,
      this.page,
      this.has_next});

  factory Paging.fromJson(Map<String, dynamic> json) => _$PagingFromJson(json);
}
