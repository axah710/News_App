// ignore_for_file: prefer_typing_uninitialized_variables

// import 'package:news_app/models/article_model.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';
import 'package:news_app/services/news_service.dart';
import 'package:news_app/views/article_view.dart';

class ArticleViewBuilder extends StatefulWidget {
  const ArticleViewBuilder({
    super.key, required this.category,
  });
  final String category;

  @override
  State<ArticleViewBuilder> createState() => _ArticleViewBuilderState();
}

class _ArticleViewBuilderState extends State<ArticleViewBuilder> {
  Future<List<ArticleModel>>? future;
  @override
  void initState() {
    future = NewsService(Dio()).getTopHeadlines(categoryName:widget.category );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleModel>>(
      future: future,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return ArticleView(
            articleList: snapshot.data!,
          );
        } else if (snapshot.hasError) {
          return const SliverToBoxAdapter(
            child: DataHasError(),
          );
        } else {
          return const SliverToBoxAdapter(
            child: Center(
              child: DataIsLoading(),
            ),
          );
        }
      },
    );
  }
}

class DataHasError extends StatelessWidget {
  const DataHasError({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text("Oops There's Something Wrong !!!");
  }
}

class DataIsLoading extends StatelessWidget {
  const DataIsLoading({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CircularProgressIndicator();
  }
}

  // List<ArticleModel> articleList = [];

  // bool isLoading = true;
  // @override
  // void initState() {
  //   super.initState();
  //   getGeneralNews();

  // Future<void> getGeneralNews() async {
  //   articleList = await NewsService(Dio()).getGeneralNews();
  //   isLoading = false;
  //   setState(() {});
  // }

  // @override
  // Widget build(BuildContext context) {
  //   return isLoading
  //       ? const SliverToBoxAdapter(
  //           child: Center(
  //             child: CircularProgressIndicator(),
  //           ),
  //         )
  //       : articleList.isNotEmpty
  //           ? ArticleView(
  //               articleList: articleList,
  //             )
  //           : const SliverToBoxAdapter(
  //               child: Text("Oops There's Something Wrong !!!"),
  //             );
  // }

