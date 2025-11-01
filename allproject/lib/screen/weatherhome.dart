import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import '../provider/weatherprovider.dart';
import '../widget/weather.dart';

class Weatherhome extends StatelessWidget {
   Weatherhome({required this.city});
  String city;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Weather app'),
        centerTitle: true,
      ),
      body: Consumer<Weatherprovider>(builder: (context, value, child) {
        var res=value.weathermodel;
        if(res==null){
          value.fetchdata(city: city);
          return CircularProgressIndicator();
        }else{
          return Weatherwidget(
                name: res.name,
                text: res.text,
                country: res.country,
                icon: res.icon,
                temp_c: res.temp_c,
              );
          }
      },
      ),
    );
  }
}
