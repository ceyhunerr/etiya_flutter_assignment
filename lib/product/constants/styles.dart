import 'package:flutter/material.dart';

class Styles{

  TextStyle buttonTextStyle (Size size,Color color)=> TextStyle(
    color: color,
    fontSize: size.height*0.019,
    fontWeight: FontWeight.bold,
  );
  TextStyle appBarTextStyle (Size size,Color color)=> TextStyle(
    color: color,
    fontSize: size.height*0.024,
    fontWeight: FontWeight.bold,
  );

  TextStyle titleStyle(Size size, Color color) => TextStyle(
    color: color,
    fontSize: size.height*0.019,
    fontWeight: FontWeight.w700,
  );

  TextStyle standartStyle(Size size, Color color) => TextStyle(
    color: color,
    fontSize: size.height*0.019,
    fontWeight: FontWeight.w400,
  );
}