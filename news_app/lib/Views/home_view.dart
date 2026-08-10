import 'package:flutter/material.dart';
import 'package:news_app/widgets/category_list_view.dart';
import 'package:news_app/widgets/new_list_view_builder.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Padding(
          padding: EdgeInsets.symmetric(vertical: 20),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('News'),
              Text(' Cloud', style: TextStyle(color: Color(0xFF6A4001))),
            ],
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(child: CategoryListView()),
            SliverToBoxAdapter(child: SizedBox(height: 23)),

            NewsListViewBuilder(category: 'general'),
          ],
        ),
        // child: Column(
        //   children: [
        //     CategoryListView(),
        //     Expanded(child: NewsListView()),
        //   ],
        // ),
      ),
    );
  }
}
