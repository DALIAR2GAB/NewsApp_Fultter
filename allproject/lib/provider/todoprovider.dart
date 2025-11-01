import 'package:flutter/cupertino.dart';

import '../model/todomodel.dart';
import '../services/todoserviecs.dart';


class Todoprovider extends ChangeNotifier{
  Todomodel?todomodel;

  Future<void>fetchtask()async{
    todomodel=await Todoserviecs.gettodo();
    notifyListeners();
  }

  Future<void>fecthposttask({required String task})async{
    await Todoserviecs.addtask(task: task);
    todomodel?.todos.add({"todo": task});
    todomodel?.total += 1;
    notifyListeners();
  }
}