import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


import 'news_tile.dart';

class NewsListCart extends StatelessWidget {


  const NewsListCart({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: 55,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 12.0),
          child: NewsCard(

          ),
        );
      },
    );
  }
}
