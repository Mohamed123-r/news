import 'package:flutter/material.dart';
import '../widgets/news_list_view_builder.dart';

class CategoryPage extends StatelessWidget {
  CategoryPage({super.key, required this.category});

  String category;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CustomScrollView(
            physics: const BouncingScrollPhysics(),
            slivers: [
              NewsListViewBuilder(
                category: category,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
