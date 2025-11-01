import 'package:flutter/cupertino.dart';


import '../model/categorieswith2api.dart';
import '../model/productwith2api.dart';
import '../services/2api.dart';

class Providerwith2api extends ChangeNotifier{
  Categorymodle?homemodel;
  Categorymodle?categorymodle;

  Future<void>fechproduct()async{
    homemodel=await APIS2seciecs.getcategorys();
    notifyListeners();
  }
  Future<void>fechcategories()async{
    categorymodle=await APIS2seciecs.getcategorys();
    notifyListeners();
  }

}