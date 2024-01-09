// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';
import 'package:news_app/views/specific_category_view.dart';

class CategoryComp extends StatelessWidget {
  CategoryComp({super.key, required this.category});
  CategoryModel category;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) {
              return SpecificCategory(
                categoryName: category.title,
              );
            },
          ),
        );
      },
      child: Container(
        height: 75,
        width: 150,
        margin: const EdgeInsets.only(
          left: 12,
          top: 12,
        ),
        decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(category.img),
            ),
            borderRadius: BorderRadius.circular(12)),
        child: Center(
          child: Text(
            category.title,
            style: const TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
