import 'package:flutter/material.dart';
import 'package:online6_dars/pages/dialog_page.dart';
import 'package:online6_dars/pages/home_page.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: homePage(),
      routes: {
        DialogPage.id:(context)=>DialogPage()

      },
    );
  }
}
