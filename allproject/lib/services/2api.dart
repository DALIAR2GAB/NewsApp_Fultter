import 'package:dio/dio.dart';

import '../model/categorieswith2api.dart';
import '../model/productwith2api.dart';


class APIS2seciecs {
   static Dio dio=Dio();

   static Future<Homemodel>getproducte()async{
     Response response=await dio.get('https://dummyjson.com/products');
     if(response.statusCode==200){
       return Homemodel.fromjson(response.data);
     }else{
       throw 'error';
     }
   }

   static Future<Categorymodle>getcategorys()async{
     Response response=await dio.get('https://dummyjson.com/products');
     if(response.statusCode==200){
       return Categorymodle.fromjson(response.data);
     }else{
       throw 'error';
     }
   }
}