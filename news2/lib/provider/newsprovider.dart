import 'package:flutter/material.dart';


import '../models/newsmodel.dart';
import '../serives/newsserviecs.dart';

class Newsprovider extends ChangeNotifier{
  Newsmodel?newsmodel;

  Future<void> fetchdata({required String categroy})async{
    newsmodel=await Newsserices.getdata(category: categroy);
    notifyListeners();
  }
}