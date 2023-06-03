import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:project_riverpod/screens/apiCaling/model.dart';

class HttpGetPost {
  String baseUrl = 'https://jsonplaceholder.typicode.com';
  String endPoint = '/posts';
  Future<List<Post>> getPost() async {
    List<Post> allPost = [];
    var response = await http.get(Uri.parse(baseUrl + endPoint));
    try {
      if (response.statusCode == 200) {
        var collection = jsonDecode(response.body);
        for (var element in collection) {
          allPost.add(Post.fromJson(element));
        }
      } else {
        print('something is wrong');
      }
    } catch (e) {
      print(e.toString());
    }
    return allPost;
  }
}
