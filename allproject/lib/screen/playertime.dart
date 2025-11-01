import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import '../provider/playertime.dart';
import '../widget/playertime.dart';

class Playertime extends StatelessWidget {
  const Playertime({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Player Time'),
        centerTitle: true,
      ),
      body: Consumer<Playertimeprovider>(builder: (context, value, child) {
        var res=value.playermodel;
        if(res==null){
          value.fecthcdata();
          return CircularProgressIndicator();
        }else{
          return Column(
            children: [
              SizedBox(
                height: 200,
                child: ListView.builder(scrollDirection: Axis.horizontal,itemCount: res.data.length,itemBuilder: (context, index) {
                  var kess=res.data.keys;
                  var valuess=res.data.values;
                   return Wigettime(
                      name: kess.elementAt(index),
                     time: valuess.elementAt(index),
                   );
                },),
              ),
              SizedBox(height: 20,),
              Expanded(
                child: ListView.builder(itemCount: res.data.length,itemBuilder: (context, index) {
                  var kess=res.data.keys;
                  var valuess=res.data.values;
                  return Wigettime(
                    name: kess.elementAt(index),
                    time: valuess.elementAt(index),
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
