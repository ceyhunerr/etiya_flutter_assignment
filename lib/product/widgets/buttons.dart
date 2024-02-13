import 'package:land_measurement/product/constants/app_colors.dart';
import 'package:land_measurement/product/constants/styles.dart';
import 'package:flutter/material.dart';

class Buttons{
  MaterialButton customButton(String title,BuildContext context,Size size,Null Function() fonk) {
    return MaterialButton(
      onPressed:(){
        fonk();
      },
      minWidth: size.width*0.9,
      height: size.height*0.05,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(size.height*0.015),
      ),
      color: Theme.of(context).primaryColor,
      child: Text(title,style: Styles().buttonTextStyle(size, Colors.white),),
    );
  }

  backButton(Icon icon, BuildContext context,Size size, Null Function() fonk) {
    return MaterialButton(
      onPressed:(){
        fonk();
      },
      minWidth: size.width*0.1,
      height: size.height*0.05,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(size.height*0.015),
      ),
      color: Theme.of(context).cardColor,
      child: icon,
    );
  }
}