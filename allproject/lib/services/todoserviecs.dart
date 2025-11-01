import 'package:dio/dio.dart';

import '../model/todomodel.dart';

class Todoserviecs{
  static Dio dio=Dio();

  static Future<Todomodel>gettodo()async{
    Response response=await dio.get('https://dummyjson.com/todos/user/13');
    if(response.statusCode==200){
      return Todomodel.fromjson(response.data);
    }else{
      throw 'error';
    }
  }

  static Map data={"todo":"","completed":false,"userId":13};
  static Future<void>addtask({required String task})async{
    data['todo']=task;
    await dio.post('https://jsonplaceholder.typicode.com/posts',data: data);

  }
}