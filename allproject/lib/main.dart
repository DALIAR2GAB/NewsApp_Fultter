import 'package:allproject/provider/newsprovider.dart';
import 'package:allproject/provider/playertime.dart';
import 'package:allproject/provider/product.dart';
import 'package:allproject/provider/providerwith2api.dart';
import 'package:allproject/provider/randomuser.dart';
import 'package:allproject/provider/regesprovider.dart';
import 'package:allproject/provider/todoprovider.dart';
import 'package:allproject/provider/weatherprovider.dart';
import 'package:allproject/screen/playertime.dart';
import 'package:allproject/screen/productscreen.dart';
import 'package:allproject/screen/randomuserscreen.dart';
import 'package:allproject/screen/screenbutton.dart';
import 'package:allproject/screen/screenof2api.dart';
import 'package:allproject/screen/screentask.dart';
import 'package:allproject/screen/searchweather.dart';
import 'package:allproject/screen/signupscren.dart';
import 'package:allproject/screen/weatherhome.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
     return MultiProvider(providers: [
       ChangeNotifierProvider(create: (context) => Regesprovider(),),
       ChangeNotifierProvider(create: (context) => Newsprovider(),),
       ChangeNotifierProvider(create: (context) => Weatherprovider(),),
       ChangeNotifierProvider(create: (context) => Todoprovider(),),
       ChangeNotifierProvider(create: (context) => Randomuserprovider(),),
       ChangeNotifierProvider(create: (context) => Playertimeprovider(),),
       ChangeNotifierProvider(create: (context) => Productprovider(),),

       ChangeNotifierProvider(create: (context) => Providerwith2api(),),

     ],child: MaterialApp(
       debugShowCheckedModeBanner: false,
       home:Screenof2api(),
     ),);
  }
}
