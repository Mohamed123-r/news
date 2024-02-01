import 'package:flutter/material.dart';
import '../models/category_model.dart';
import '../pages/category_page.dart';


class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key, required this.category});

  final CategoryModel category;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return const CategoryPage();
            },
          ),
        );
      },
      child: Container(
        margin: const EdgeInsets.only(right: 8),
        height: 85,
        width: 160,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(
              category.image,
            ),
          ),
        ),
        child: Center(
          child: Text(
            category.categoryName,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold
            ),
          ),
        ),
      ),
    );
  }
}
