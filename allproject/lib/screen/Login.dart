import 'package:allproject/screen/screenbutton.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import '../provider/regesprovider.dart';
import '../widget/widetreges.dart';

class Loginscreeen extends StatelessWidget {
   Loginscreeen({super.key});
   final formkey=GlobalKey<FormState>();
   TextEditingController emailcontroller=TextEditingController();
  TextEditingController passwordcontroller=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Log In'),
        centerTitle: true,
      ),
      body: Form(
        key: formkey,
        child: Consumer<Regesprovider>(builder: (context, value, child) {
          return Column(
            children: [
              Customwidget(
                contrrol: emailcontroller,
                iconnn: Icon(Icons.password),
                obsi: false,
                tex: 'Email:',
                vaild: (value) {
                  if(value==null || value.isEmpty){
                    return 'Enter the empty';
                  }else{
                    return null;
                  }
                },
              ),
              SizedBox(height: 20,),
              Customwidget(
                contrrol: passwordcontroller,
                iconnn: Icon(Icons.password),
                obsi: true,
                tex: 'password:',
                vaild: (value) {
                  if(value==null || value.isEmpty){
                    return 'Enter the empty';
                  }else{
                    return null;
                  }
                },
              ),
              SizedBox(height: 30,),
              ElevatedButton(onPressed: ()async {
               if(formkey.currentState!.validate())   {
                 await value.fetclogin(email: emailcontroller.text,
                     password: passwordcontroller.text);

               }
               if(value.regemodel!.status==true){
                 ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(value.regemodel!.message)));
                 Navigator.push(context, MaterialPageRoute(builder: (context) => Buttons(),));
               }
              }, child: Text('login')),

            ],
          ) ;
        },),
      ),
    );
  }
}
