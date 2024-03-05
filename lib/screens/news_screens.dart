import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:newssapp/components/cat_List_view.dart';
import 'package:newssapp/components/news_list_viwe_builder.dart';



class NewsScreen extends StatelessWidget {
 NewsScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
              appBar: AppBar(
                backgroundColor: Colors.transparent,
                elevation: 0,
                
                title: const Center(
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text("News",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 11, 2, 2)
                      ),),
                      Text("Kom",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 195, 6, 173),
                      ),)
                    ],
                  ),
                ),
              ),
                 
 body:    Padding(
   padding: const EdgeInsets.symmetric(horizontal:  15.0),
    child:
    CustomScrollView(
      slivers: [
        SliverToBoxAdapter(child:  CategoriesListView()),
        const SliverToBoxAdapter(child : SizedBox(height: 30,)),
        
       NewsListViewBuilder(category: "general",)
      ],
    )
 ),
    );
  }
}









