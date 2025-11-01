import 'package:flutter/cupertino.dart';

class Todowidget extends StatelessWidget {
   Todowidget({required this.task});
  String task;
  @override
  Widget build(BuildContext context) {
    return Text(task);


  }
}
