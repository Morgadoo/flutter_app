import 'dart:ui';

import 'package:flutter/material.dart';
import 'dart:math';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flare_flutter/flare_actor.dart';

import 'package:flutter_app/constants.dart';
import 'package:flutter_app/second_screen.dart';
import 'package:flutter_app/profile_screen.dart';
import 'package:flutter_app/model/category.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isOpen = false;
  String user = random().toString();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: dBackGround,
        body: Padding(
          padding: EdgeInsets.only(left: 20, top: 15, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  SvgPicture.asset('assets/icons/menu.svg',
                      height: 26, width: 26, color: dIconColor),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                          PageRouteBuilder(
                            transitionDuration: Duration(milliseconds: 600),
                            transitionsBuilder: (BuildContext context,
                                Animation<double> animation,
                                Animation<double> secAnimation,
                                Widget child) {
                              var begin = Offset(1.0, 0.0);
                              var end = Offset.zero;
                              var curve = Curves.ease;
                              var tween = Tween(begin: begin, end: end)
                                  .chain(CurveTween(curve: curve));

                              return SlideTransition(
                                position: animation.drive(tween),
                                child: child,
                              );
                            },
                            pageBuilder: (BuildContext context,
                                Animation<double> animation,
                                Animation<double> secAnimation) {
                              return Profile_Screen();
                            },
                          ),
                      );
                    },
                    child: Container(
                        width: 50,
                        height: 50,
                        decoration: new BoxDecoration(
                            shape: BoxShape.circle,
                            image: new DecorationImage(
                                image: NetworkImage(
                                  "https://www.rogowaylaw.com/wp-content/uploads/Blank-Employee.jpg")
                            )
                        )
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Text('Olá Luís', style: kHeadingextStyle),
              Text('Encontra um curso à tua medida!',
                  style: kSubheadingextStyle),
              Container(
                margin: EdgeInsets.symmetric(vertical: 20),
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                height: 60,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: isOpen ? dSelectBoxColor : dBoxColor,
                  borderRadius: BorderRadius.circular(40),
                ),
                child: InkWell(
                  onTap: () {
                    setState(() {
                      isOpen = !isOpen;
                      print('on tap pressed');
                    });
                  },
                  child: Row(children: <Widget>[
                    Container(
                      width: 20,
                      height: 20,
                      child: FlareActor('assets/flare/search_to_close.flr',
                          color: dIconColor,
                          animation: isOpen ? 'search_close' : 'close_search'),
                    ),
                    SizedBox(width: 16),
                    Text(
                      isOpen ? '|' : 'Pesquisa',
                      style: TextStyle(
                        fontSize: 18,
                        color: isOpen ? dTextColor : dSubTextColor,
                      ),
                    ),
                  ]),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text("Categorias", style: kTitleTextStyle),
                  Text(
                    "Ver Todo",
                    style: kSubtitleTextSyule.copyWith(color: kBlueColor),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Expanded(
                child: StaggeredGridView.countBuilder(
                  crossAxisCount: 2,
                  itemCount: categories.length,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          PageRouteBuilder(
                            transitionDuration: Duration(milliseconds: 600),
                            transitionsBuilder: (BuildContext context,
                                Animation<double> animation,
                                Animation<double> secAnimation,
                                Widget child) {
                              var begin = Offset(0.0, 1.0);
                              var end = Offset.zero;
                              var curve = Curves.ease;
                              var tween = Tween(begin: begin, end: end)
                                  .chain(CurveTween(curve: curve));

                              return SlideTransition(
                                position: animation.drive(tween),
                                child: child,
                              );
                            },
                            pageBuilder: (BuildContext context,
                                Animation<double> animation,
                                Animation<double> secAnimation) {
                              return DetailsScreen(categoryId: index);
                            },
                          ),
                        );
                      },
                      child: ClipRRect(
                        child: Container(
                          padding: EdgeInsets.all(10),
                          height: index.isEven ? 220 : 180,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: dBackGround,
                            image: DecorationImage(
                              colorFilter: ColorFilter.mode(
                                  Color(0xFFbfbfbf), BlendMode.multiply),
                              image: AssetImage(categories[index].image),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: BackdropFilter(
                            filter: ImageFilter.blur(sigmaX: 0, sigmaY: 0),
                            child: Container(
                              color: Colors.black.withOpacity(0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: <Widget>[
                                  Text(
                                    categories[index].name,
                                    style: kTitleTextMiniStyle,
                                  ),
                                  Text(
                                    '${categories[index].numOfCourses} Cursos',
                                    style: TextStyle(
                                      color:
                                          Color(0xFFffffff).withOpacity(0.80),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                  staggeredTileBuilder: (index) => StaggeredTile.fit(1),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

int random() {
  var rng = new Random();
  var l = new List.generate(1, (_) => rng.nextInt(400));
  return l[0];
}
