import 'package:flutter/material.dart';
import 'package:palette_generator/palette_generator.dart';

// Colors Light theme
const kTextColor = Color(0xFF0D1333);
const kBlueColor = Color(0xFF6E8AFA);
const kBestSellerColor = Color(0xFFFFD073);
const kGreenColor = Color(0xFF49CC96);


//Color Dark theme

const dTextColor = Color(0xFFFFFFF7);
const dSubTextColor = Color(0xFF818181);
const dIconColor = Color(0xFFFFFFFF);
const dBoxColor = Color(0xFF383838);
const dSelectBoxColor = Color(0xFF4D4D4D);



// My Text Styles
const kHeadingextStyle = TextStyle(
  fontSize: 28,
  color: dTextColor,
  fontWeight: FontWeight.bold,
);
const kSubheadingextStyle = TextStyle(
  fontSize: 18,
  color: dTextColor,
  height: 2,
);

const kTitleTextStyle = TextStyle(
  fontSize: 20,
  color: dTextColor,
  fontWeight: FontWeight.bold,
);

const kSubtitleTextSyule = TextStyle(
  fontSize: 18,
  color: dTextColor,
  // fontWeight: FontWeight.bold,
);

const kTitleTextMiniStyle = TextStyle(
  fontSize: 18,
  color: dTextColor,
  fontWeight: FontWeight.bold,
);



/*getImagePalette () async {
  final PaletteGenerator paletteGenerator = await PaletteGenerator.fromImageProvider(
      AssetImage('assets/images/user.png'),
      size: Size(30, 30)
      );
  return paletteGenerator;
}
*/
