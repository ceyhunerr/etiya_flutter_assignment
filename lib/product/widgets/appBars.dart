import 'package:land_measurement/product/constants/styles.dart';
import 'package:flutter/material.dart';

class AppBars{
  static AppBar appBar(String title,Size size,Color color){
    return AppBar(
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(size.height*0.015),
        ),
      ),
      title: Text(title,style: Styles().appBarTextStyle(size, color),),
      centerTitle: true,
    );
  }
}