import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NewsWidget extends StatelessWidget {
   NewsWidget({required this.des,required this.image,required this.tittle,required this.author});
  String author;
  String tittle;
  String des;
  String image;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
         CircleAvatar(
           backgroundImage: NetworkImage(image),
           radius: 35,
         ),
          Text(author),
          SizedBox(height: 10,),
          Text(tittle,style: TextStyle(fontWeight: FontWeight.bold),),
          SizedBox(height: 10,),
          Text(des),
        ],
      ),
    );
  }
}
