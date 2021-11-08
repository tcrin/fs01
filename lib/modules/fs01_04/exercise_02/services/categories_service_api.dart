import 'package:dio/dio.dart';
import 'package:fs01/modules/fs01_04/exercise_02/models/categories.dart';

class CategoryServiceApi {
  final String url = 'https://api.dofhunt.200lab.io/v1/categories';
  final _dio = Dio();

  Future fetchCategories() async {
    try {
      Response response = await _dio.get(url);
      ListOfCategories listOfCategories =
          ListOfCategories.fromJson(response.data);
      print(response.data);
      return listOfCategories.category;
    } on DioError catch (e) {
      print(e);
    }
  }
}
