import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';

import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import 'package:flutter_app/course_screen.dart';

import 'package:flutter_app/constants.dart';
import 'package:flutter_app/model/courses.dart';
import 'package:flutter_app/model/category.dart';

class DetailsScreen extends StatelessWidget {
  final int categoryId;

  const DetailsScreen({Key key, this.categoryId}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: dBackGround,
          image: DecorationImage(
            colorFilter:
                ColorFilter.mode(Color(0xFFd9d9d9), BlendMode.multiply),
            image: AssetImage(categories[categoryId].image),
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
                  child: Column(
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
                      Text(categories[categoryId].name,
                          style: kHeadingextStyle),
                      SizedBox(height: 16),
                      Text(
                        '${categories[categoryId].numOfCourses} Cursos',
                        style: TextStyle(
                          fontSize: 18,
                          color: Color(0xFFffffff).withOpacity(0.80),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 30),
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
                            Text("Cursos mais Populares",
                                style: kTitleTextStyle),
                            Text(
                              "Filtro",
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
                            itemCount: categories[categoryId].numOfCourses,
                            mainAxisSpacing: 16,
                            itemBuilder: (context, index) {
                              //String nomedocurso = 'courses' + categoryId.toString();
                              return InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => Course_Screen(
                                          categoryId: categoryId,
                                          courseId: index),
                                    ),
                                  );
                                },
                                child: Container(
                                  padding: EdgeInsets.all(10),
                                  height: 58 +
                                      140 / categories[categoryId].numOfCourses,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(16),
                                    color: dBackGround,
                                    image: DecorationImage(
                                      colorFilter: ColorFilter.mode(
                                          Color(0xFFbbbbbb),
                                          BlendMode.multiply),
                                      image: AssetImage(
                                          coursesData[categoryId][index][6]),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Text(
                                        coursesData[categoryId][index][2],
                                        style: kTitleTextMiniStyle,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                          Text(
                                            '\u2B50 ${coursesData[categoryId][index][4]}',
                                            style: TextStyle(
                                              color: Color(0xFFffffff)
                                                  .withOpacity(0.80),
                                            ),
                                          ),
                                          Text(
                                            '${coursesData[categoryId][index][3]}k \u{1F465}',
                                            style: TextStyle(
                                              color: Color(0xFFffffff)
                                                  .withOpacity(0.80),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
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
