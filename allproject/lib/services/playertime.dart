import 'package:dio/dio.dart';

import '../model/playertime.dart';

class Playerservieces{
  static Dio dio=Dio();

  static Future<Playermodel>getdata()async{
    Response response=await dio.get('http://api.aladhan.com/v1/timingsByCity/12-04-2025?city=Giza&country=Egypt&method=2');
    if(response.statusCode==200){
      return Playermodel.fromjsom(response.data);
    }else{
      throw  'error';
    }
  }
}