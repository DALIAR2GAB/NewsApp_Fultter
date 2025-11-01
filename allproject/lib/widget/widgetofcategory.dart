import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Categorywidget extends StatelessWidget {
   Categorywidget({required this.name,required  this.image});
  String image;
  String name;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage(image),
            radius: 20,
          ),
          Text(name),
        ],
      ),
    );
  }
}
