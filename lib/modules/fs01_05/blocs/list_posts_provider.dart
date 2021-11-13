import 'package:flutter/cupertino.dart';
import 'package:fs01/modules/fs01_05/models/data/data.dart';
import 'package:fs01/modules/fs01_05/repos/list_posts_repo.dart';

import '';

class ListPostsProvider with ChangeNotifier {
  List<Data>? _listData = [];

  List<Data>? get listData {
    return [];
  }

  bool _loading = false;
  bool get loading => _loading;

  void setLoading(bool flag){
    _loading = flag;
    notifyListeners();
  }

  void setData(List<Data>? posts){
    _listData = posts;
    notifyListeners();
  }

  final ListPostsRepo _listPostsRepo = ListPostsRepo();
  Future<void> getAllPosts() async{
    setLoading(true);

    List<Data>? newListData = await _listPostsRepo.getPosts();
    if(newListData!=null){
      setData(newListData);
      setLoading(false);
    }
    //print('${newListData.length}');
notifyListeners();
  }
}
