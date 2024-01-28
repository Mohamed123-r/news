import 'package:dio/dio.dart';
import 'package:news_app/models/articles_model.dart';

class NewsService {
  final Dio dio;

  NewsService({required this.dio});

  void getNews() async {
    Response response = await dio.get(
        'https://newsapi.org/v2/everything?q=general&apiKey=c5960a887f78413b994e0f5d787c46cb');
    Map<String, dynamic> jsonData = response.data;
    List<dynamic> articles = jsonData["articles"];

    List<ArticlesModel> articlesList = [];
    for (var article in articles) {
      ArticlesModel articleModel = ArticlesModel(
        title: article["title"],
        subTitle: article["description"],
        image: article["urlToImage"],
      );
      articlesList.add(articleModel);
    }
    print(articlesList);
  }
}
