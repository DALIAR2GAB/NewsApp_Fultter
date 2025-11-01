import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import '../provider/providerwith2api.dart';
import '../widget/product.dart';
import '../widget/widgetofcategory.dart';

class Screenof2api extends StatelessWidget {
  const Screenof2api({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
         title: Text("Screen of 2 Apis"),
        centerTitle: true,
      ),
      body: Consumer<Providerwith2api>(builder: (context, value, child) {
        var res=value.homemodel;
        var res2=value.categorymodle;

        if(res==null||res2==null){
          value.fechproduct();
          value.fechcategories();
          return CircularProgressIndicator();
        }else{
             return Column(
               children: [
                 SizedBox(
                   height: 200,
                   child: ListView.builder(scrollDirection: Axis.horizontal,itemCount: res.prod.length,itemBuilder: (context, index) {
                        return Productwidget(
                          price: res.prod[index]['price'],
                          image: res.prod[index]['thumbnail'],
                          name: res.prod[index]['title'],

                        );
                   },),
                 ),
                 SizedBox(height: 20,),
                 Expanded(
                   child: ListView.builder(itemCount:res2.prod.length,itemBuilder: (context, index) {
                     return Categorywidget(
                       image: res2.prod[index]['thumbnail'],
                       name: res2.prod[index]['title'],

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
