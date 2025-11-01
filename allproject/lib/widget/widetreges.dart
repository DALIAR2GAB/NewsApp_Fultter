import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Customwidget extends StatelessWidget {
   Customwidget({required this.contrrol,required this.iconnn,required this.obsi,required this.vaild,required this.tex});
  TextEditingController contrrol;
  bool obsi;
  Icon iconnn;
  String? Function(String?) vaild;
  String tex;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: contrrol,
      decoration:
      InputDecoration(
        icon: iconnn,
       label: Text(tex),

      ),
      obscureText: obsi,
      validator: vaild,
    );
  }
}
