import 'package:flutter/material.dart';
import 'package:newsapp/models/newsapp.dart';
import 'package:newsapp/serviecs/newappserviecs.dart';

class Newsappprovider extends ChangeNotifier{
  newsappmodel?news;

  Future <void>fecthdata()async{
    news=await Newappserviecs.getdata();
    notifyListeners();
  }
  
}