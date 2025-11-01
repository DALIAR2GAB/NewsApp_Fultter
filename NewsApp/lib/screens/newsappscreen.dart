import 'package:flutter/material.dart';
import 'package:newsapp/providers/newsappprovider.dart';
import 'package:newsapp/widget/newsappwidget.dart';
import 'package:provider/provider.dart';

import 'deatilesnews.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        centerTitle: true,
        title: Text('News App'),
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
       ),
       body: Consumer<Newsappprovider>(
        builder: (context, provider, child) {
          var pro=provider.news?.articles;
          if(pro==null){
            provider.fecthdata();
            return CircularProgressIndicator();
          }else{
            return ListView.builder(
                  itemCount: pro.length,
              itemBuilder: (context, index) {
                 return InkWell(
                   onTap: (){
                     Navigator.of(context).push(
                         MaterialPageRoute(builder: (context) => Dateails(
                           author: pro[index]['Author'],
                           des: pro[index]['description'],
                           tit: pro[index]['title'],
                           urlToImage: pro[index]['urlToImage'],),));
                   },
                   child: MyWidget(
                      Tittle: pro[index]['title'],
                      author: pro[index]['Author'],
                      descri: pro[index]['description'],
                      image: pro[index]['urlToImage'],

                   ),
                 );
              },
              
              );
          }
        }
       ,),
    );
  }
}