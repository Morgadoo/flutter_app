import 'package:flutter/material.dart';
import 'dart:math';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flare_flutter/flare_actor.dart';

import 'package:flutter_app/constants.dart';
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
    return Scaffold(
      backgroundColor: Color(0xFF000000),
      body: Padding(
        padding: EdgeInsets.only(left: 20, top: 40, right:20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                SvgPicture.asset('assets/icons/menu.svg',height: 26,width: 26,color: dIconColor),
                new Container(
                  width: 50,
                  height: 50,
                  decoration: new BoxDecoration(
                    shape: BoxShape.circle,
                    image: new DecorationImage(
                      image: NetworkImage("https://api.adorable.io/avatars/100/" + user)
                    )
                  )
                ),
              ],
            ),
            SizedBox(height: 10),
            Text('Olá Luís', style: kHeadingextStyle),
            Text('Encontra um curso à tua medida!', style: kSubheadingextStyle),
              Container (
                margin: EdgeInsets.symmetric(vertical: 20),
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                height: 60,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: 
                  isOpen ? dSelectBoxColor : dBoxColor,
                  borderRadius: BorderRadius.circular(40),
                ),
                child: InkWell(
                  onTap: () {
                    setState(() {
                    isOpen = !isOpen;
                    print('on tap pressed');
                    });
                  },
                  child: Row(
                    children: <Widget>[
                      //SvgPicture.asset("assets/icons/search.svg"),
                      Container(
                        width: 20,
                        height: 20,
                        child: FlareActor('assets/flare/search_to_close.flr',
                        color: dIconColor,
                        animation: 
                        //'idle'
                        isOpen ? 'search_close' : 'close_search'),
                      ),
                      SizedBox(width: 16),
                      Text(isOpen ? '|' : 'Search for anything',
                        style: TextStyle(
                          fontSize: 18,
                          color: isOpen ? dTextColor : dSubTextColor,
                        ),
                      ), 
                    ]
                  ),
                ),
              ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text("Categorias",style: kTitleTextStyle),
                Text("Ver Todo",style: kSubtitleTextSyule.copyWith(color: kBlueColor),
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
                
                itemBuilder: (context,index){
                  return Container(
                    padding: EdgeInsets.all(10),
                    height: index.isEven ? 200 : 180,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: kBlueColor,
                      image: DecorationImage(
                        colorFilter: ColorFilter.mode(Color(0xFFb3b3b3), BlendMode.multiply),
                        image: AssetImage(categories[index].image),
                        fit: BoxFit.cover,

                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Text(
                          categories[index].name,
                          style:kTitleTextMiniStyle,
                          ),
                        Text(
                          '${categories[index].numOfCourses} Cursos',
                          style: TextStyle(
                            color: Color(0xFFffffff).withOpacity(0.80),
                          ),
                        )
                    

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
    );
  }
}



int random(){
  var rng = new Random();
  var l = new List.generate(1, (_) => rng.nextInt(400));
  return l[0];
}