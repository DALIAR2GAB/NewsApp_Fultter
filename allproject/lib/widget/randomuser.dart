import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Widgetrandomuser extends StatelessWidget {
   Widgetrandomuser({required this.name,required this.image,required this.email});
   String image;
   String name;
   String email;

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
        Text(email),
      ],
    );
  }
}
