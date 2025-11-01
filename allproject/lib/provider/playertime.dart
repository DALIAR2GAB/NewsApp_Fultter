import 'package:flutter/cupertino.dart';


import '../model/playertime.dart';
import '../services/playertime.dart';

class Playertimeprovider extends ChangeNotifier{
  Playermodel?playermodel;

  Future<void>fecthcdata()async{
    playermodel=await Playerservieces.getdata();
    notifyListeners();
  }
}