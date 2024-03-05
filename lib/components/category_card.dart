import 'package:flutter/material.dart';
import 'package:newssapp/models/category_model.dart';
import 'package:newssapp/screens/category_view.dart';
class CategoryCard extends StatelessWidget {
  const CategoryCard({
    Key? key,
  
    required this.category,
  }) : super(key: key);

final CategoryModel category;

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap:() {
        Navigator.of(context).push(
          MaterialPageRoute(builder: 
          (context) {
            return  CategoryView(
              category:category.catName ,
            );
          },)
        );
      }, 
      child: Padding(
        padding: const EdgeInsets.only(right:8.0,left: 8.0),
        child: Container(
            height: 100,
            width: 210,
            decoration: BoxDecoration(
              image:  DecorationImage(
                image: AssetImage(category.ImageUrl),
                fit: BoxFit.fill,
                ),
              borderRadius: BorderRadius.circular(12),
            ),
          ),
      ),
    );
  }
}
