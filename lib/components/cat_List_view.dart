import 'package:flutter/material.dart';
import 'package:newssapp/components/category_card.dart';
import 'package:newssapp/models/category_model.dart';

class CategoriesListView extends StatelessWidget {
   CategoriesListView({
    super.key,
  });
final List <CategoryModel> categories=[
  CategoryModel(ImageUrl: "assets/images/Science.png", catName:"science" ),
  CategoryModel(ImageUrl: "assets/images/bussniss.jpeg", catName:"business"),
  CategoryModel(ImageUrl: "assets/images/sport.jpeg", catName:"sports"),
  CategoryModel(ImageUrl: "assets/images/entertainment.jpeg", catName:"entertainment"),
  CategoryModel(ImageUrl: "assets/images/health.jpeg", catName:"health"),
  CategoryModel(ImageUrl: "assets/images/tech.jpeg", catName:"technology"),
];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
     height:100,
      child: ListView.builder(
       scrollDirection: Axis.horizontal,
        itemCount: categories.length,
       itemBuilder: (context, index) {
         return 
         CategoryCard(
          category: categories[index],
         );
      
         
      },
      ),
      );
  }}