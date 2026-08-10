import 'package:flutter/material.dart';
import 'package:news_app/models/articles_model.dart';
import 'news_List.dart';

class NewsListView extends StatelessWidget {
  final List<ArticleModel> articles;

  const NewsListView({super.key, required this.articles});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(childCount: articles.length, (
        context,
        index,
      ) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 22),
          child: NewsTile(articleModel: articles[index]),
        );
      }),
    );
  }
}
