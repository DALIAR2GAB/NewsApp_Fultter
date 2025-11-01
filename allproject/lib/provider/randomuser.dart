import 'package:flutter/cupertino.dart';

import '../model/randomusermodel.dart';
import '../services/randomuser.dart';


class Randomuserprovider extends ChangeNotifier{
  Randomusermodel?randomusermodel;

  Future<void> fetchuser()async{
     randomusermodel=await Randomuserservices.getuser();
     notifyListeners();
  }
}