import 'package:flutter/material.dart';
import 'package:api_flutter/pages/Home_Page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Api Barajas xd',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      //routes: {
      //'/':()=>HomePage()
      // },
    );
  }
}