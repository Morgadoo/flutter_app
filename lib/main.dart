import 'package:flutter/material.dart';
import 'package:flutter_app/constants.dart';
import 'dart:math';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';


void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Curso APP',
      theme: ThemeData(),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}





class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(left: 20, top: 40, right:20),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                SvgPicture.asset('assets/icons/menu.svg',height: 30,width: 30,),

                new Container(
                  width: 60,
                  height: 60,
                  decoration: new BoxDecoration(
                    shape: BoxShape.circle,
                    image: new DecorationImage(
                      image: new NetworkImage("https://api.adorable.io/avatars/100/"+ random().toString())
                    )
                  )
                ),
              ],
            ),
            SizedBox(height: 30),
            Text('Olá Luís', style: kHeadingextStyle),
            Text('Encontra um curso à tua medida', style: kSubheadingextStyle),
          ],
        ),
      ),
    );
  }
}


int random(){
  var rng = new Random();
  var l = new List.generate(1, (_) => rng.nextInt(400));
  return l[0];
}