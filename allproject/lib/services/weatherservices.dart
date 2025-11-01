import 'package:dio/dio.dart';

import '../model/weathermodel.dart';

class Weatherservices{
  static Dio dio=Dio();

 static Future<Weathermodel>getweather({required String city})async{
    Response response =await dio.get('http://api.weatherapi.com/v1/current.json?key=83fd82f0603846f2bc3140520231703&q=$city');
    if(response.statusCode==200){
      return Weathermodel.fromjson(response.data);
    }else{
      throw 'error';
    }
  }
}