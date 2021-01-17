import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import 'package:flutter_app/constants.dart';
import 'package:flutter_app/model/courses.dart';

// ignore: camel_case_types
class Course_Screen extends StatelessWidget {
  final int categoryId;
  final int courseId;


  const Course_Screen({Key key, this.categoryId, this.courseId})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: dBackGround,
          image: DecorationImage(
            colorFilter:
                ColorFilter.mode(Color(0xFF888888), BlendMode.multiply),
            image: AssetImage(coursesData[categoryId][courseId][6]),
            alignment: Alignment.topRight,
            fit: BoxFit.fitWidth,
          ),
        ),
        child: SafeArea(
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(left: 20, top: 20, right: 20),
                child: Container(
                  height: MediaQuery.of(context).size.height / 3,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              GestureDetector(
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                child: SvgPicture.asset(
                                    "assets/icons/arrow-left.svg",
                                    color: dIconColor),
                              ),
                              SvgPicture.asset("assets/icons/more-vertical.svg",
                                  color: dIconColor),
                            ],
                          ),
                          SizedBox(height: 20),
                          Text(coursesData[categoryId][courseId][2],
                              style: kHeadingextStyle),
                          SizedBox(height: 16),
                          InkWell(
                            child: Text(
                              'By ${coursesData[categoryId][courseId][5]}',
                              style: TextStyle(
                                fontSize: 22,
                                decoration: TextDecoration.underline,
                                color: Color(0xFFffffff).withOpacity(0.85),
                              ),
                            ),
                            onTap: () async {
                              if (await canLaunch("${coursesData[categoryId][courseId][7]}")) {
                              await launch("${coursesData[categoryId][courseId][7]}");
                              }
                            }
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                '\u2B50 ${coursesData[categoryId][courseId][4]}',
                                style: TextStyle(
                                    color: Color(0xFFffffff).withOpacity(0.80),
                                    fontSize: 20),
                              ),
                              Text(
                                '${coursesData[categoryId][courseId][3]}k \u{1F465}',
                                style: TextStyle(
                                    color: Color(0xFFffffff).withOpacity(0.80),
                                    fontSize: 20),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    color: dBackGround.withOpacity(0.86),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(left: 20, top: 20, right: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text("Modulos", style: kTitleTextStyle),
                            Text(
                              "Pesquisa",
                              style: kSubtitleTextSyule.copyWith(
                                  color: kBlueColor),
                            ),
                          ],
                        ),
                        SizedBox(height: 20),
                        Expanded(
                          child: StaggeredGridView.countBuilder(
                            crossAxisCount: 1,
                            //itemCount: courses[categoryId].numsameid,
                            itemCount: 6,
                            mainAxisSpacing: 16,
                            itemBuilder: (context, index) {
                              //String nomedocurso = 'courses' + categoryId.toString();
                              return Container(
                                padding: EdgeInsets.all(10),
                                //height: 58 + 140 / categories[categoryId].numOfCourses,
                                height: MediaQuery.of(context).size.height / 10,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(16),
                                  color: dBackGround,
                                  image: DecorationImage(
                                    colorFilter: ColorFilter.mode(
                                      index.isEven ? Color(0xFFaaaaaa) : Color(0xFF666666),
                                    BlendMode.multiply),
                                    image: AssetImage(
                                        coursesData[categoryId][courseId][6]),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Text(
                                      "${index + 1}: Nome do Modulo",
                                      style: kTitleTextMiniStyle,
                                    ),
                                  ],
                                ),
                              );
                            },
                            staggeredTileBuilder: (index) =>
                                StaggeredTile.fit(1),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

