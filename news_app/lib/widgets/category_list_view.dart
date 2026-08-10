import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';
import 'package:news_app/widgets/category_card.dart';

class CategoryListView extends StatelessWidget {
  const CategoryListView({super.key});

  final List<CategoryModel> categories = const [
    CategoryModel(image: "assets/business.png", categoryName: "Business"),
    CategoryModel(
      image: "assets/entertaiment.png",
      categoryName: "Entertaiment",
    ),
    CategoryModel(image: "assets/general.png", categoryName: "General"),
    CategoryModel(image: "assets/health.png", categoryName: "Health"),
    CategoryModel(image: "assets/science.png", categoryName: "Science"),
    CategoryModel(image: "assets/sports.png", categoryName: "Sports"),
    CategoryModel(image: "assets/technology.jpeg", categoryName: "Technology"),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 130,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context, index) {
          return CategoryCard(category: categories[index]);
        },
      ),
    );
  }
}
