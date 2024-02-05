library card_button;

import 'package:flutter/material.dart';


class CardButton {

 static  Widget button({required String title,required Size size, required Color buttonColor, required TextStyle style,required Null Function() fonk})=> GestureDetector(
   onTap: fonk,
   child: Container(
      width: size.width * 0.4,
      height: size.height * 0.1,
      margin: EdgeInsets.symmetric(horizontal: size.width * 0.02, vertical: size.height * 0.01),
      decoration: BoxDecoration(
        color: buttonColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Center(child: Text(title,style: style,)),
    ),
 );
}
