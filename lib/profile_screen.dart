import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';




import 'package:flutter_app/constants.dart';

// ignore: camel_case_types
class Profile_Screen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: dBackGround,
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
                      Text("Profile Screen",
                          style: kHeadingextStyle),
                      SizedBox(height: 16),
                      Text(
                        'text...',
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
