import 'package:flutter/material.dart';
import 'package:newsapp/providers/newsappprovider.dart';
import 'package:newsapp/screens/newsappscreen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

   return ChangeNotifierProvider(
      create: (context) => Newsappprovider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Home(),
      ),
    );
  }
}
