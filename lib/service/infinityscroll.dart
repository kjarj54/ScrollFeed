import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:scrollfeed/model/post.dart';

Future<List<Post>> getPosts({int page = 1, int limit = 10}) async {
  final url = Uri.parse('https://jsonplaceholder.typicode.com/posts?_page=$page&_limit=$limit');
  //https://github.com/typicode/jsonplaceholder/issues/65 de aqui saque la paginacion xd

  try {
    final response = await http.get(url);

    if (response.statusCode == 200) {
      final List<dynamic> jsonList = json.decode(response.body);
      return jsonList.map((json)=> Post.fromJson(json)).toList();
    }else{
      throw Exception("Error en el fetch de los posts");
    }
  } catch (e) {
    print(e);
    throw Exception("Error en el fetch de los posts: $e");
  }
}
