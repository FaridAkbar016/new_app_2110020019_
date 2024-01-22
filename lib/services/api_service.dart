import 'dart:convert';
import 'package:http/http.dart';
import 'package:new_app_2110020019_/model/article_model.dart';

class ApiService {
  final endPointUrl = "newsapi.org";
  final client = Client();

  Future<List<Article>> getArticleoto() async {
    final queryParameters = {
      'q': 'automotive',
      'apiKey': 'e6b2cf0f1325448ba92ea7cc2b6a6e88',
    };

    final uri = Uri.https(endPointUrl, '/v2/everything', queryParameters);
    final response = await get(uri);
    if (response.statusCode == 200) {
      Map<String, dynamic> json = jsonDecode(response.body);
      List<dynamic> body = json['articles'];
      List<Article> articles =
          body.map((dynamic item) => Article.fromJson(item)).toList();
      return articles;
    } else {
      throw ("Can't get the articles");
    }
  }

  // getarticle sport
  Future<List<Article>> getArticleSp() async {
    final queryParameters = {
      'country': 'id',
      'apiKey': 'e6b2cf0f1325448ba92ea7cc2b6a6e88',
      'category': 'sport',
    };

    final uri = Uri.https(endPointUrl, '/v2/top-headlines', queryParameters);
    final response = await get(uri);
    if (response.statusCode == 200) {
      Map<String, dynamic> json = jsonDecode(response.body);
      List<dynamic> body = json['articles'];
      List<Article> articles =
          body.map((dynamic item) => Article.fromJson(item)).toList();
      return articles;
    } else {
      throw ("Can't get the articles");
    }
  }
}
