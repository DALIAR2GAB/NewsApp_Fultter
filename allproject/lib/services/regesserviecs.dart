import 'package:dio/dio.dart';

import '../model/regesuser.dart';

class Regesserviecs{
  static Dio dio=Dio();

static Future<Regemodel>signup({required String name,required String password,required String email,required String phone})async{
  Map data={'Name':name,'Password':password,'Email':email,'Phone':phone};
  Response response=await dio.post('https://elsewedyteam.runasp.net/api/Register/AddUser',data: data);

  if(response.statusCode==200){
    print(response.data);
    return Regemodel.fromjson(response.data);
  }else{
    throw 'error';
  }
}

  static Future<Regemodel>login({required String email,required String password})async{
    Map data={'Email':email,'Password':password};
    Response response=await dio.post('https://elsewedyteam.runasp.net/api/Login/CheckUser',data: data);
    if(response.statusCode==200){
      print(response.data);
      return Regemodel.fromjson(response.data);
    }else{
      throw 'error';
    }
  }
}







