import 'package:flutter/material.dart';


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
