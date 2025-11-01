import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Weatherwidget extends StatelessWidget {
   Weatherwidget({required this.temp_c,required this.country,required this.icon,required this.name,required this.text});
  String name;
  String country;
  num temp_c;
  String text;
  String icon;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text(name),
          SizedBox(height: 10,),
          Text(country),
          SizedBox(height: 10,),
          Image.network(icon),
          SizedBox(height: 10,),
          Text('$temp_c'),
          SizedBox(height: 10,),
          Text(text),
        ],
      ),
    );
  }
}
