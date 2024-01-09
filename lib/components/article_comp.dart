// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';

class ArticleComp extends StatelessWidget {
  const ArticleComp({super.key, required this.articleModel});
  final ArticleModel articleModel;
  final String defaultArticleTitle = "No Title Available!";
  final String defaultArticleDescription = "No Description Available!";
  final String defaultArticleImage =
      "https://i.guim.co.uk/img/media/042ee710f2299f5578f7d8297d5e42f7f4b338c6/0_198_6048_3628/master/6048.jpg?width=620&dpr=2&s=none";

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.network(
              articleModel.img ?? defaultArticleImage,
              height: 85,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 8.0,
            ),
            child: Text(
              articleModel.title ?? defaultArticleTitle,
              style: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Text(
            articleModel.description ?? defaultArticleDescription,
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              color: Colors.grey,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
