import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import '../provider/randomuser.dart';
import '../widget/randomuser.dart';

class Randomuserscreen extends StatelessWidget {
  const Randomuserscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){
        Provider.of<Randomuserprovider>(context,listen: false).fetchuser();
      },child: Icon(Icons.refresh),),
       appBar: AppBar(
         title: Text('Random User'),
         centerTitle: true,
       ),
      body: Consumer<Randomuserprovider>(builder: (context, value, child) {
        var res=value.randomusermodel;
        if(res==null){
          value.fetchuser();
          return CircularProgressIndicator();
        }else{
          return Column(
            children: [
              SizedBox(
                height: 200,
                child: ListView.builder(scrollDirection: Axis.horizontal,itemCount: res.results.length,itemBuilder: (context, index) {
                  return Widgetrandomuser (
                    name: res.results[index]['name']['first']+res.results[index]['name']['last'],
                    image: res.results[index]['picture']['thumbnail'],
                    email: res.results[index]['email'],
                  );
                },),
              ),
              SizedBox( height: 10,),
              Expanded(
                child: ListView.builder(itemCount: res.results.length,itemBuilder: (context, index) {
                  return Widgetrandomuser (
                    name: res.results[index]['name']['first']+res.results[index]['name']['last'],
                    image: res.results[index]['picture']['thumbnail'],
                    email: res.results[index]['email'],
                  );
                },),
              ),
            ],

          );
        }
      },),
    );
  }
}
