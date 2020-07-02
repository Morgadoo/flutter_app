import 'package:flutter/material.dart';
import 'package:flutter/services.dart' ;

import 'package:flutter_app/main_screen.dart';
import 'package:flutter_app/model/courses.dart';

class Todo {
  final String title;
  final int numero;

  Todo(this.title, this.numero);
}



void main() {
  
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

 SystemChrome.setPreferredOrientations([
        DeviceOrientation.portraitUp,
      ]);

//SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.bottom]);

SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);

    return MaterialApp(
      title: 'Curso APP',
      theme: ThemeData(),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }

}


