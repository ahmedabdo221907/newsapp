// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import 'package:newssapp/components/News_list_view.dart';
import 'package:newssapp/models/article_model.dart';
import 'package:newssapp/services/news_services.dart';

class NewsListViewBuilder extends StatefulWidget {
  const NewsListViewBuilder({
    Key? key,
    required this.category,
  }) : super(key: key);
  
    final String category;

  @override
  State<NewsListViewBuilder> createState() => _NewsListViewBuilderState();
}

class _NewsListViewBuilderState extends State<NewsListViewBuilder> 
{
  var future ;
  void initState(){
    super.initState();
   future = NewsSercivces(Dio()).getGeneralNews(
    category: widget.category);
  }
 
  @override
  Widget build(BuildContext context) {
     return FutureBuilder<List<ArticleModel>>(
    future: future,
      builder: (context, snapshot) 
      
      {
              if (snapshot.hasData) {
                  return  NewsListView(
              articles:snapshot.data!,
               );
                 }    
                 else if(snapshot.hasError){
                  return const 
                  SliverToBoxAdapter(child:Text("ooops there was an error "));
                 }              
                 else {
                  return const 
                  SliverToBoxAdapter(child : Center(child: CircularProgressIndicator()));
                 }
},
      ) ;
    
    
  }
}


//
    // isLoading ? SliverToBoxAdapter
    // (child:Center(child: CircularProgressIndicator())):
    //  NewsListView(
    //   articles:articles,


   // }
//   Future<void> getGeneralNew()async{ 
//     articles=await NewsSercivces(Dio()).getGeneralNews();
//     isLoading =false ;
//     setState(() {
//     });
//     }