// import 'package:dio/dio.dart';
// import 'package:flutter/material.dart';
// import 'package:news_app/models/article_model.dart';
// import 'package:news_app/services/news_service.dart';
// import 'package:news_app/views/article_view.dart';

// class ArticleViewBuilder extends StatefulWidget {
//   const ArticleViewBuilder({
//     super.key,
//   });

//   @override
//   State<ArticleViewBuilder> createState() => _ArticleViewBuilderState();
// }

// class _ArticleViewBuilderState extends State<ArticleViewBuilder> {
//   List<ArticleModel> articleList = [];

//   bool isLoading = true;
//   @override
//   void initState() {
//     super.initState();
//     getGeneralNews();
//   }

//   Future<void> getGeneralNews() async {
//     articleList = await NewsService(Dio()).getGeneralNews();
//     isLoading = false;
//     setState(() {});
//   }

//   @override
//   Widget build(BuildContext context) {
//     return isLoading
//         ? const SliverToBoxAdapter(
//             child: Center(
//               child: CircularProgressIndicator(),
//             ),
//           )
//         : articleList.isNotEmpty
//             ? ArticleView(
//                 articleList: articleList,
//               )
//             : const SliverToBoxAdapter(
//                 child: Text("Oops There's Something Wrong !!!"),
//               );
//   }
// }
