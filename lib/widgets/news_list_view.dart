import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_app/models/articles_model.dart';
import 'news_tile.dart';

class NewsListCart extends StatelessWidget {
  const NewsListCart({super.key, required this.articles});

 final List<ArticlesModel> articles ;

  @override
  Widget build(BuildContext context) {
    return
     SliverList.builder(
            itemCount: articles.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 16.0),
                child: NewsCard(
                  article: articles[index],
                ),
              );
            },
          );
        }
}
