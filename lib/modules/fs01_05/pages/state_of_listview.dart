import 'package:flutter/material.dart';
import 'package:fs01/modules/fs01_05/models/data/data.dart';
import 'package:fs01/modules/fs01_05/repos/list_posts_repo.dart';




class StateOfListView extends ChangeNotifier {
  List<Data>? _posts = [];
  List<Data>? get posts => _posts;

  bool _loading = false;
  bool get loading => _loading;

  bool _error = false;
  bool get error => _error;

  String? _errorMessage;
  String? get errorMessage => _errorMessage;

   final ListPostsRepo _listPostsRepo = ListPostsRepo();

  void setError(bool value, String? message) {
    _error = value;
    _errorMessage = message;
    notifyListeners();
  }

  void setLoading(bool val) {
    _loading = val;
    notifyListeners();
  }

  void setData(List<Data>? val) {
    _posts = val;
    notifyListeners();
  }

  Future<void> getAllPost() async {
    setLoading(true);
    List<Data>? newList = await _listPostsRepo.getPosts(
      onError: (message) {
        setError(true, message);
        setLoading(false);
      },
    );
    setData(newList);
    setLoading(false);
  }
}