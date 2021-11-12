import 'package:fs01/modules/fs01_05/models/data/data.dart';
import 'package:dio/dio.dart';

const url = "https://api.dofhunt.200lab.io/";
const userToken =
    'eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9.eyJhdWQiOltdLCJlbWFpbCI6ImZpZ2h0dGVjaC5kZXZAZ21haWwuY29tIiwiZXhwIjoxNjM3OTkwODgyLCJpYXQiOjE2MzUzOTg4ODIsImlzcyI6IiIsImp0aSI6ImMwNDBlMzFlLWM3YzUtNDFlYi1iZGIzLWQ4NjNkM2Y0YjIxNSIsIm5iZiI6MTYzNTM5ODg4Miwic2NwIjpbIm9mZmxpbmUiXSwic3ViIjoiMzUxNyIsInVzZXJfaWQiOiIzNTE3In0.j1GAHXT2e-fPSv5ePH96wMjgoJI5-Cb4gpTTvIaKYuMeAdeA0kuMVip8ueuVcpwmiW-OxeeBkE_sHv8Q-ODT4i_SElFGYJkBT6wfvrltU8S3Q-DPh6E3XSwq0nNoOE7UlB_LcsarlAw00Y4d6ysNeiXx-tZMvm1fq8x9W071USQ';

class ListPostsRepo {
  Future<List<Data>?> getPosts({Function(String message)? onError}) async {
    try {
      Response response =
          await Dio(BaseOptions(baseUrl: url, connectTimeout: 3000)).get(
        "/v1/posts",
        queryParameters: {'tags': "portrait"},
        options: Options(method: 'get', headers: {
          'Authorization': "Bearer " + userToken,
          "Content-Type": "application/json"
        }),
      );
      if (response.statusCode != 200) {
        onError!(response.data['code']);
        return [];
      } else {
        List data = response.data['data'];
      // print(response.data['data']);
        List<Data> newPost = data.map((json) => Data.fromJson(json)).toList();
        //data.map((json) => Posts.fromJson(json)).toList()
        return newPost;
      }
    } catch (e) {}
//     try {
//       final res = await Dio(BaseOptions(baseUrl: api,connectTimeout: 3000)).get(
//         "/v1/posts",
//         queryParameters: {'tags': "portrait"},
//         options: Options(method: 'get', headers: {
//           'Authorization': "Bearer " + userToken,
//           "Content-Type": "application/json"
//         }),
//       );
//
//       if(res.statusCode != 200){
//         return null;
//       }
//
//       List data = res.data['data'];
// print(res.data['data']);
//       return data.map((json) => Posts.fromJson(json)).toList();
//     } catch (e) {
//       rethrow;
//     }
  }
}
