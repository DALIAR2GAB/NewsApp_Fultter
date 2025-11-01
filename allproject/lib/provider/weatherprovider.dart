import 'package:flutter/cupertino.dart';

import '../model/weathermodel.dart';
import '../services/weatherservices.dart';


class Weatherprovider extends ChangeNotifier{
  Weathermodel?weathermodel;

  Future<void> fetchdata({required String city})async{
    weathermodel =await Weatherservices.getweather(city: city);
    notifyListeners();
  }
}