import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import 'package:flutter_app/main_screen.dart';
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
            colorFilter: ColorFilter.mode(Color(0xFFa6a6a6), BlendMode.multiply),
            image: AssetImage(categories[categoryId].image),
            alignment: Alignment.topRight,
            fit: BoxFit.fitWidth,
          ),
        ),
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 20, top: 40, right: 20),
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
                          child: SvgPicture.asset("assets/icons/arrow-left.svg",color: dIconColor),
                        ),
                        SvgPicture.asset("assets/icons/more-vertical.svg", color: dIconColor),
                      ],
                    ),
                    SizedBox(height: 20),
                    Text(categories[categoryId].name, style: kHeadingextStyle),
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
                  color: dBackGround.withOpacity(0.9),
                ),
                child: Padding(
                  padding: EdgeInsets.only(left: 20, top: 30, right: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text("Cursos mais Populares",style: kTitleTextStyle),
                          Text("Filtro",style: kSubtitleTextSyule.copyWith(color: kBlueColor),),
                        ],
                      ),
                      SizedBox(height: 10),
                      Expanded(
                      child: StaggeredGridView.countBuilder(
                        crossAxisCount: 1,
                        //itemCount: courses[categoryId].numsameid,
                        itemCount: categories[categoryId].numOfCourses,
                        mainAxisSpacing: 16,
                        itemBuilder: (context,index){
                          //String nomedocurso = 'courses' + categoryId.toString();
                          return Container(
                            padding: EdgeInsets.all(10),
                            height: 70,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              color: dBackGround,
                              image: DecorationImage(
                                colorFilter: ColorFilter.mode(Color(0xFFbfbfbf), BlendMode.multiply),
                                //image: AssetImage(courses[,{"id": categoryId , 'indexID': index}].image ),
                                image: AssetImage(coursesData[categoryId][index][6]),
                                fit: BoxFit.cover,

                              ),
                            ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          coursesData[categoryId][index][2],
                          style:kTitleTextMiniStyle,
                          ),
                        Text(
                          '${coursesData[categoryId][index][4]} Estrelas',
                          style: TextStyle(
                            color: Color(0xFFffffff).withOpacity(0.80),
                          ),
                        ),
                      ],
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
            ),
          ],
        ),
      ),
    );
  }
}
