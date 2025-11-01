import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
   MyWidget({required this.Tittle,required this.author,required this.descri,required this.image});

   String author;
   String Tittle;
   String image;
   String descri;
  @override
  Widget build(BuildContext context) {
    return Card(
       child:Column(
        children: [
          Text(author),
          SizedBox(height: 15,),
          Text(Tittle),
           SizedBox(height: 15,),
           Text(descri),
           SizedBox(height: 15,),
           Image.network(image),
        ],
       ) ,
    );
  }
}