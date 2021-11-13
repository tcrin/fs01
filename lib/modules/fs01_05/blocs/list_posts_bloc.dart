import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fs01/modules/fs01_05/models/data/data.dart';
import 'package:fs01/modules/fs01_05/repos/list_posts_repo.dart';

class ListPostsBloc extends Bloc<String, List<Data>?> {
  ListPostsBloc() :super(null) {
    on<String>(
            (event, emit) async {
          switch (event) {
            case 'getPosts':
              try {
                final res = await ListPostsRepo().getPosts();
                if (res != null) {
                  emit(res);
                }
              } catch (e){
                debugPrint('err=$e');
                emit([]);
              }
              break;
          }
        }
    );
  }

  // Future<void> getPosts() async {
  //
  // }
}