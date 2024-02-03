import 'package:flutter/material.dart';
import 'package:news_app/models/articles_model.dart';
import 'package:news_app/pages/artical_page.dart';

class NewsCard extends StatelessWidget {
  NewsCard({super.key, required this.article});

  ArticlesModel article;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return ArticalPage(uri: article.url);
            },
          ),
        );
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.network(
              article.image ??
                  'https://upload.wikimedia.org/wikipedia/commons/thumb/d/d1/Image_not_available.png/640px-Image_not_available.png',
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            height: 4,
          ),
          Text(
          article.title  ,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              color: Colors.black87,
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
          Text(
            article.subTitle ??'',
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              color: Colors.grey,
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}
