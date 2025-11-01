import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import '../provider/regesprovider.dart';
import '../widget/widetreges.dart';
import 'Login.dart';

class Signupscreen extends StatelessWidget {
   Signupscreen({super.key});
  final formke=GlobalKey<FormState>();
  TextEditingController namecontroler=TextEditingController();
  TextEditingController passcontroler=TextEditingController();
  TextEditingController emailcontroler=TextEditingController();
  TextEditingController phonecontroler=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign up'),
        centerTitle: true,
      ),
      body: Form(
        key: formke,
        child: Consumer<Regesprovider>(builder: (context, value, child) {
            return Column(
              children: [
                Customwidget(
                  contrrol: namecontroler,
                   iconnn: Icon(Icons.abc_outlined),
                  obsi: false,
                  tex: 'name:',
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
                  contrrol: passcontroler,
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
                SizedBox(height: 20,),
                Customwidget(
                  contrrol: emailcontroler,
                  iconnn: Icon(Icons.email),
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
                  contrrol: phonecontroler,
                  iconnn: Icon(Icons.phone),
                  obsi: false,
                  tex: 'phone:',
                  vaild: (value) {
                    if(value==null || value.isEmpty){
                      return 'Enter the empty';
                    }else{
                      return null;
                    }
                  },
                ),
                ElevatedButton(onPressed: ()async {
                  if(formke.currentState!.validate()){
                    await value.fetchsignup(name: namecontroler.text,
                        password: passcontroler.text,
                        email: emailcontroler.text,
                        phone: phonecontroler.text);
                  }

                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(value.regemodel!.message)));
                  if(value.regemodel!.status==true){
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(value.regemodel!.message)));
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Loginscreeen(),));
                  }


                }, child: Text('Sign Up'))
              ],
            );
        },),
      ),
    );
  }
}
