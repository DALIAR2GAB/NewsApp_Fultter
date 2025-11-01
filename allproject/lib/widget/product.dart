import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Productwidget extends StatelessWidget {
   Productwidget({required this.name,required this.image,required this.price});
  String name;

  String image;
  dynamic price;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
          CircleAvatar(
            backgroundImage: NetworkImage(image),
            radius: 30,
          ),
        SizedBox(height: 10,),
        Text(name),
        SizedBox(height: 10,),
        Text('$price'),
        SizedBox(height: 10,),

      ],
    );
  }
}
