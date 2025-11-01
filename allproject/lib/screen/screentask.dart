import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import '../provider/todoprovider.dart';
import '../widget/todowidget.dart';
import 'addtask.dart';

class Pagetask extends StatelessWidget {
  const Pagetask({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      floatingActionButton: FloatingActionButton(onPressed: (){
        showModalBottomSheet(context: context, builder: (context) => Addtask(),);
      },child: Icon(Icons.add),
      ),
      appBar: AppBar(

        title: Text('Task'),
        actions: [
          Padding(
            padding: EdgeInsets.all(16),
            child: Center(
              child: Consumer<Todoprovider>(
                builder: (context, provider, child) {
                  return Text(
                    '${provider.todomodel?.total}',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  );
                },
              ),
            ),
          ),
        ],
        centerTitle: true,
      ),
      body: Container(
        child: Column(
          children: [
            Container(

              height: 600,
              width: 300,
              child: Consumer<Todoprovider>(builder: (context, value, child) {
                var res=value.todomodel?.todos;
                if(res==null){
                  value.fetchtask();
                  return CircularProgressIndicator();
                }else{
                  return ListView.builder(itemCount: res.length,
                    itemBuilder: (context, index) {
                     return Todowidget(task: res[index]['todo'],);
                  },);
                }
              },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
