import 'package:flutter/material.dart';
import 'package:flutter/services.dart' ;
import 'package:flutter_app/main_screen.dart';


void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

 SystemChrome.setPreferredOrientations([
        DeviceOrientation.portraitUp,
      ]);


    return MaterialApp(
      title: 'Curso APP',
      theme: ThemeData(),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }

}


