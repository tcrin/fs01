import 'package:fs01/modules/fs01_05/models/paging.dart';
import 'package:fs01/modules/fs01_05/models/param.dart';

import 'data/data.dart';
import 'package:json_annotation/json_annotation.dart';

part 'posts.g.dart';

@JsonSerializable()
class Posts {
  final int? code;
  final List<Data>? data;
  final Param? param;
  final Paging? paging;

  Posts({this.code, this.data, this.param, this.paging});

  factory Posts.fromJson(Map<String, dynamic> json) => _$PostsFromJson(json);
}
