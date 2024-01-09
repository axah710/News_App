// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:news_app/views/article_view_builder.dart';
import 'package:news_app/views/category_view.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "News",
                style: TextStyle(color: Colors.black),
              ),
              Text(
                "Clone",
                style: TextStyle(color: Colors.amber),
              ),
            ],
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: CustomScrollView(
            physics: const BouncingScrollPhysics(),
            slivers: [
              SliverToBoxAdapter(
                child: CategoryView(),
              ),
              const SliverToBoxAdapter(
                child: SizedBox(height: 24),
              ),
              const ArticleViewBuilder(
                category: "general",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
