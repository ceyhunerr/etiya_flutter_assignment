import 'package:etiya_flutter_assignment/product/constants/app_colors.dart';
import 'package:flutter/material.dart';


final appTheme = ThemeData(
  brightness: Brightness.light,
  primarySwatch: orangeMaterialColor,
  fontFamily: 'Roboto',
  cardColor: Colors.white,
  appBarTheme: AppBarTheme(
    color: orangeMaterialColor,
  ),
  colorScheme: ColorScheme.light(
    primary: orangeMaterialColor,
    secondary: orangeMaterialColor,
    brightness: Brightness.light,

    background: grey,
  ),
);

final darkTheme = ThemeData(
  brightness: Brightness.dark,
  primarySwatch: orangeMaterialColor,
  fontFamily: 'Roboto',
  cardColor: Colors.grey[700]!,
  appBarTheme: AppBarTheme(
    color: navy,
  ),
  colorScheme: ColorScheme.dark(
    primary: Colors.grey,
    brightness: Brightness.dark,
    secondary: Colors.grey[800]!,
    background: Color(0xff111315),
  ),
);
