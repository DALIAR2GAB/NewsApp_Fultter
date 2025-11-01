import 'package:dio/dio.dart';

import '../model/newsmode.dart';

class Newsservices {
  static Dio dio=Dio();
  
 static Future<Newsmodel> getarctilce({required String category})async{
    Response response=await dio.get('https://newsapi.org/v2/top-headlines?country=us&category=$category&apiKey=8ec595f59826456a88202286ceff5c82');
    if(response.statusCode==200){
      return Newsmodel.formjson(response.data);
    }else{
      throw 'error';
    }
  }
}