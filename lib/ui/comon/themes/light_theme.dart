import 'package:flutter/material.dart';

const kRed = Color(0xFFEA2D44);
const kBlue = Color(0xFF3FBBC4);
const kLightBlue = Color(0xFFD7EDEC);
const kYellow = Color(0xFFFFD527);
const kGreen = Color(0xFFC1E24B);
const kOrange = Color(0xFFED9224);

final ThemeData lightTheme = ThemeData(
  primaryColor: Colors.white,
  scaffoldBackgroundColor: kLightBlue,

  // appBarTheme: AppBarTheme(color: Colors.white),
  primaryTextTheme: TextTheme(
    headline6: TextStyle(color: Colors.grey),
  ),
);
