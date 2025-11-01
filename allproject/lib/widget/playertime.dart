import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Wigettime extends StatelessWidget {
   Wigettime({required this.name,required this.time});
   String name;
   String time;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
           Text(name),
          SizedBox(height: 20,),
          Text(time),
        ],
      ),
    );
  }
}
