import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import '../provider/product.dart';
import '../widget/product.dart';

class Productscreen extends StatelessWidget {
  const Productscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Show Product'),
        centerTitle: true,
      ),
      body: Consumer<Productprovider>(builder: (context, value, child) {
        var res=value.productmodel;
        if(res==null){
          value.fetchdata();
          return CircularProgressIndicator();
        } else {
          return Column(
            children: [
              SizedBox(
                height: 200,
                child: ListView.builder(
                 scrollDirection: Axis.horizontal, itemCount: res.products.length,
                  itemBuilder: (context, index) {
                    return Productwidget(
                      name:res.products[index]['title'] ??"null",
                      image: res.products[index]['thumbnail']??"null",
                      price: res.products[index]['price']??"null",

                    );
                },),
              ),
              SizedBox(height: 20,),
              Expanded(
                child: GridView.builder(
                  gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
                  itemCount: res.products.length,
                  itemBuilder: (context, index) {
                  return Productwidget(
                    name:res.products[index]['title'] ??"null",
                    image: res.products[index]['thumbnail']??"null",
                    price: res.products[index]['price']??"null",
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
