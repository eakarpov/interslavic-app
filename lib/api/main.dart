import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:interslavic_app/dto/article.dart';
import 'package:interslavic_app/dto/list_params.dart';
import 'package:interslavic_app/dto/page.dart';

class API {
  static String base = "localhost:3030";
}

class V1API extends API {
  static String version = "v1";

  final String _articles = "articles";

  get articles {
    return "/${V1API.version}/$_articles";
  }
}

V1API apiV1 = V1API();

Future<CPage<ArticleDTO>> fetchArticles(ListParams params) async {
  final response = await http
      .get(Uri.http(API.base, apiV1.articles, params.toJson()));

  if (response.statusCode == 200) {
    return CPage.fromJson(json.decode(response.body));
  } else {
    throw Exception('Failed to load album');
  }
}