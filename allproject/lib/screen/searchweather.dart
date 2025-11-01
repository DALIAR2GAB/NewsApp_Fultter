import 'package:allproject/screen/weatherhome.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import '../provider/weatherprovider.dart';

class Search extends StatelessWidget {
   Search({super.key});
  TextEditingController searchcontroller=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Seach about any city..'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          TextFormField(
             controller: searchcontroller,
            decoration: InputDecoration(
              label: Text('Search about any city')
            ),

          ),
          ElevatedButton(onPressed: () {
            Provider.of<Weatherprovider>(context,listen: false).weathermodel=null;
            Navigator.push(context, MaterialPageRoute(builder:  (context) =>Weatherhome(city: searchcontroller.text,) ,));
          }, child: Text('Search'))
        ],
      ),
    );
  }
}
