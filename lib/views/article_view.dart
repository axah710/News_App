import 'package:flutter/material.dart';
import 'package:news_app/components/article_comp.dart';
import 'package:news_app/models/article_model.dart';

class ArticleView extends StatelessWidget {
  const ArticleView({super.key, required this.articleList});
  final List<ArticleModel> articleList;

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: articleList.length,
        (context, index) => ArticleComp(articleModel: articleList[index]),
      ),
    );
  }
}
