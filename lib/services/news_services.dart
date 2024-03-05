import 'package:dio/dio.dart';
import 'package:newssapp/models/article_model.dart';

class NewsSercivces {
  final  Dio dio  ;

  NewsSercivces(this.dio);

Future <List<ArticleModel>> getGeneralNews({required String category})async{
    String apikey="apiKey=8305238991ac4e3dae5374ab735a7a2e";
Response response =await  dio.get("https://newsapi.org/v2/top-headlines?country=us&category=$category&$apikey");

Map <String ,dynamic> jsonData =response.data;

 List<dynamic> articles= jsonData['articles'];

List<ArticleModel>articleList=[];

for (var article in articles) {
  ArticleModel articleModel =
  ArticleModel(
    image:article['urlToImage'],
     title: article['title'],
      subTitle: article['description']);

      articleList.add(articleModel);
}
  return articleList;

  }

}