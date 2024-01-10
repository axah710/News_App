// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:news_app/components/category_comp.dart';
import 'package:news_app/models/category_model.dart';

class CategoryView extends StatelessWidget {
  CategoryView({super.key});
  List<CategoryModel> categoryList = [
    CategoryModel(img: "assets/images/general.avif", title: "General"),
    CategoryModel(img: "assets/images/business.avif", title: "Business"),
    CategoryModel(
        img: "assets/images/entertaiment.avif", title: "Entertainment"),
    CategoryModel(img: "assets/images/health.avif", title: "Health"),
    CategoryModel(img: "assets/images/science.avif", title: "Science"),
    CategoryModel(img: "assets/images/sports.avif", title: "Sports"),
    CategoryModel(img: "assets/images/technology.jpeg", title: "Technology"),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 75,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categoryList.length,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          return CategoryComp(
            category: categoryList[index],
          );
        },
      ),
    );
  }
}
