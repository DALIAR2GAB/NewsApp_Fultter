import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import '../provider/newsprovider.dart';
import '../widget/widgetnews.dart';

class Home extends StatelessWidget {
   Home({required this.category});
   String category;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Categriy page'),
        centerTitle: true,
      ),
      body: Consumer<Newsprovider>(builder: (context, value, child) {
        var res=value.newsmodel;
        if(res==null){
          value.fetchdata(category: category);
          return CircularProgressIndicator();
        }else{
           return Column(
             children: [
               SizedBox(
                 height: 200,
                 child: ListView.builder(
                   scrollDirection: Axis.horizontal,
                   itemCount: res.article.length,
                   itemBuilder: (context, index) {
                   return NewsWidget(
                     image: res.article[index]['urlToImage']??"null",
                     des: res.article[index]['description']??"null",
                     tittle: res.article[index]['title']??"null",
                     author: res.article[index]['author']??"null",
                   );
                 },),
               ),
               SizedBox(height: 18,),
               Expanded(
                 child: ListView.builder(itemCount: res.article.length,itemBuilder: (context, index) {
                  return NewsWidget(
                      image: res.article[index]['urlToImage']??"null",
                      des: res.article[index]['description']??"null",
                      tittle: res.article[index]['title']??"null",
                       author: res.article[index]['author']??"null",
                    );

                 },),
               )
             ],
           );
        }
      },),
    );
  }
}
