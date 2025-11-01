import 'package:flutter/material.dart';

import '../model/regesuser.dart';
import '../services/regesserviecs.dart';


class Regesprovider extends ChangeNotifier{
  Regemodel?regemodel;

  Future<void>fetchsignup({required String name,required String password,required String email,required String phone})async{
    regemodel =await Regesserviecs.signup(name: name, password: password, email: email, phone: phone);
    notifyListeners();
  }


  Future<void>fetclogin({required String email,required String password})async{
    regemodel =await Regesserviecs.login(email: email, password: password);
    notifyListeners();
  }
}