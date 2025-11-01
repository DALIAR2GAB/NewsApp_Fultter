import 'package:flutter/cupertino.dart';


import '../model/productmodel.dart';
import '../services/product.dart';

class Productprovider extends ChangeNotifier{
  Productmodel?productmodel;

  Future<void>fetchdata()async{
    productmodel=await Productserviecs.getproduct();
    notifyListeners();
  }
}