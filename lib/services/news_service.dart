import 'package:dio/dio.dart';

class NewsService {
  final Dio dio;

  NewsService({required this.dio});

  void getNews() async {
    Response response = await dio.get(
        'https://newsapi.org/v2/everything?q=general&apiKey=c5960a887f78413b994e0f5d787c46cb');
    Map<String, dynamic> jsonData = response.data;
    List<dynamic> articles = jsonData["articles"];
  }
}
