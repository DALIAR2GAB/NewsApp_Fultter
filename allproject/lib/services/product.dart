import 'package:dio/dio.dart';

import '../model/productmodel.dart';

class Productserviecs{
  static Dio dio=Dio();

  static Future<Productmodel>getproduct()async{
    Response response =await dio.get('https://dummyjson.com/products');
    if(response.statusCode==200){
      return Productmodel.fromjson(response.data);
    }else{
      throw 'error';
    }
  }
}