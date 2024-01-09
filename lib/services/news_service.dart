import 'package:dio/dio.dart';
import 'package:news_app/models/article_model.dart';

class NewsService {
  final String apiKey = "24d30fbbe03740d4ab5f6957f215c810";
  final String baseUrl = "https://newsapi.org/v2";
  final Dio dio;
  NewsService(this.dio);
  Future<List<ArticleModel>> getTopHeadlines(
      {required String categoryName}) async {
    try {
      Response response = await dio.get(
          "$baseUrl/top-headlines?category=$categoryName&country=us&apiKey=$apiKey");
      Map<String, dynamic> jsonData = response.data;
      List<dynamic> articles = jsonData["articles"];
      List<ArticleModel> articleList = [];
      for (var article in articles) {
        ArticleModel articleModel = ArticleModel(
            title: article["title"],
            img: article["urlToImage"],
            description: article["description"]);
        articleList.add(articleModel);
      }
      return articleList;
    } catch (e) {
      return [];
    }
  }
}
