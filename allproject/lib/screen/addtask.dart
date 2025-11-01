import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/todoprovider.dart';

class Addtask extends StatelessWidget {
  const Addtask({super.key});

  @override
  Widget build(BuildContext context) {
    String task='';
    final providerrr=Provider.of<Todoprovider>(context,listen: false);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Add Task'),
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
      ),
      body: Column(
        children: [
          Text('Add task'),
          SizedBox(height: 30,),
          TextFormField(
            onChanged: (value) {
              task=value;
            },
            decoration: InputDecoration(label: Text('Enter..'),),
          ),
          ElevatedButton(onPressed: (){
            providerrr.fecthposttask(task: task);
            Navigator.pop(context);
          }, child: Text('Add Task'))
        ],
      ),
    );
  }
}
