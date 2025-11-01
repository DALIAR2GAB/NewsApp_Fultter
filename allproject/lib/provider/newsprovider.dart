import 'package:flutter/material.dart';


import '../model/newsmode.dart';
import '../services/neswservices.dart';

class Newsprovider extends ChangeNotifier{
  Newsmodel?newsmodel;

  Future<void> fetchdata({required String category})async{
    newsmodel=await Newsservices.getarctilce(category: category);
    notifyListeners();
  }
}