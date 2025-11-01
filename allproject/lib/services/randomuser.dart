import 'package:dio/dio.dart';

import '../model/randomusermodel.dart';

class Randomuserservices{
  static Dio dio=Dio();

  static Future<Randomusermodel>getuser()async{
    Response response=await dio.get('https://randomuser.me/api/?results=5');
    if(response.statusCode==200){
      return Randomusermodel.fromjson(response.data);
    }else{
      throw 'error';
    }
  }
}