import 'package:flutter/material.dart';
import 'package:newssapp/components/news_tile.dart';
import 'package:newssapp/models/article_model.dart';


class NewsListView extends StatelessWidget {
  
final List<ArticleModel> articles;

  const NewsListView({super.key, required this.articles});

  Widget build(BuildContext context) {
    return  SliverList(delegate: SliverChildBuilderDelegate(
          childCount: articles.length,
          (context, index) { 
            return  Padding(
              padding: const  EdgeInsets.only(bottom :17.0),
              child: NewsTile(
                articlemodel: articles[index],
              ),
            );
         } ));
  }
} 