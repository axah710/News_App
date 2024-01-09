import 'package:flutter/material.dart';
import 'package:news_app/views/article_view_builder.dart';

class SpecificCategory extends StatelessWidget {
  const SpecificCategory({super.key, required this.categoryName});
  final String categoryName;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          centerTitle: true,
          backgroundColor: Colors.grey.shade400,
          title: Text(
            categoryName,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [
            ArticleViewBuilder(
              category: categoryName,
            ),
          ],
        ),
      ),
    );
  }
}
