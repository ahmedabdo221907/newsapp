import 'package:flutter/material.dart';
import 'package:newssapp/models/article_model.dart';

class NewsTile extends StatelessWidget {
  const NewsTile({super.key,required this.articlemodel});
 final ArticleModel articlemodel;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(6),
          child: articlemodel.image!=null?
          Image.network( articlemodel.image!,
          height: 200,
         width: double.infinity,
         fit: BoxFit.cover,
          ):
          Image.network("https://buffer.com/cdn-cgi/image/w=1000,fit=contain,q=90,f=auto/library/content/images/size/w600/2023/10/free-images.jpg"),
        ),
        const SizedBox(height: 15,),

        Text(articlemodel.title,
            maxLines: 2,

            overflow: TextOverflow.ellipsis,
       style:const  TextStyle(
        fontSize: 18,
        color: Colors.black,
        fontWeight: FontWeight.bold,
       ),),
       const  SizedBox(height: 10),

        Text(articlemodel.subTitle?? "",
        maxLines: 3,
        style: const TextStyle(color: Colors.grey,
        fontSize: 14,
        fontWeight: FontWeight.bold,
        ),
        ),
      ],
    );
}}