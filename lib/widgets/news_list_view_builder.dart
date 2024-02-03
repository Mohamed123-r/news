import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/models/articles_model.dart';
import 'package:news_app/widgets/news_list_view.dart';
import '../services/news_service.dart';

class NewsListViewBuilder extends StatefulWidget {
  NewsListViewBuilder({super.key, required this.category});

  String category;

  @override
  State<NewsListViewBuilder> createState() => _NewsListViewBuilderState();
}

class _NewsListViewBuilderState extends State<NewsListViewBuilder> {
  late Future<List<ArticlesModel>> future;

  @override
  void initState() {
    super.initState();
    future = NewsService(dio: Dio()).getNews(q: widget.category);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: future,
      builder: (context, asyncSnapshot) {
        return asyncSnapshot.hasData
            ? NewsListCart(
                articles: asyncSnapshot.data ?? [],
              )
            : asyncSnapshot.hasError
                ? const SliverFillRemaining(
                    hasScrollBody: false,
                    child: Center(
                      child: Text(
                        "oops there was an error ,try later ",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ),
                  )
                : const SliverFillRemaining(
                    hasScrollBody: false,
                    child: Center(
                      child: CircularProgressIndicator(),
                    ),
                  );
      },
    );
  }
}
