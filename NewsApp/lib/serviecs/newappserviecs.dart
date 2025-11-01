import 'package:dio/dio.dart';
import 'package:newsapp/models/newsapp.dart';

class Newappserviecs {
  static Dio dio=Dio();

  static Future <newsappmodel>getdata()async{
    var path="https://newsapi.org/v2/top-headlines?sources=bbc-news&apiKey=ba0bd237f1ba494e9f045b5ff1dcd87f";

    Response response=await dio.get(path);
    if (response.statusCode==200)
    {
      return newsappmodel.fromjson(response.data);
    }else{
      throw Exception('Error');
    }
  }
}