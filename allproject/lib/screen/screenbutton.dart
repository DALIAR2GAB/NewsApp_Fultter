import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import '../provider/newsprovider.dart';
import 'home.dart';

class Buttons extends StatelessWidget {
   Buttons({super.key});
 TextEditingController namecontroller=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         title: Text('Welcome'),
      ),
      body: Column(

        children: [
          TextFormField(
            controller: namecontroller,
            decoration: InputDecoration(
              label: Text('Search...'),
            ),
          )
          ,InkWell(
            onTap: (){
              Provider.of<Newsprovider>(context,listen: false).newsmodel=null;
            },
            child: ElevatedButton(onPressed: () {
              Provider.of<Newsprovider>(context,listen: false).newsmodel=null;
              Navigator.push(context, MaterialPageRoute(builder: (context) => Home(category:'sport' ,),));
            }, child: Text('Sports')),
          ),
          SizedBox(height: 30,),
          InkWell(
            onTap: (){
              Provider.of<Newsprovider>(context,listen: false).newsmodel=null;
            },
            child: ElevatedButton(onPressed: () {
              Provider.of<Newsprovider>(context,listen: false).newsmodel=null;

              Navigator.push(context, MaterialPageRoute(builder: (context) => Home(category:'science' ,),));
            }, child: Text('science')),
          ),
          SizedBox(height: 30,),
          InkWell(
            onTap: (){
              Provider.of<Newsprovider>(context,listen: false).newsmodel=null;
            },
            child: ElevatedButton(onPressed: () {
              Provider.of<Newsprovider>(context,listen: false).newsmodel=null;

              Navigator.push(context, MaterialPageRoute(builder: (context) => Home(category:'business' ,),));
            }, child: Text('business')),
          ),

          SizedBox(height: 30,),

          ElevatedButton(onPressed: () {
            Provider.of<Newsprovider>(context,listen: false).newsmodel=null;
            Navigator.push(context, MaterialPageRoute(builder: (context) => Home(category:namecontroller.text ,),));
          }, child: Text('search',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),))
        ],
      ),
    );
  }
}
