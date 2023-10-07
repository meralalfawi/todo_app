import 'dart:ui';

import 'package:flutter/material.dart';

class MyTheme{
  static const Color primaryColor = Color(0xff5D9CEC);
  static const Color backgroundLight = Color(0xffDFECDB);
  static const Color GreenColor = Color(0xff61E757);
  static const Color whiteColor = Color(0xffFFFFFF);
  static const Color redColor = Color(0xffEC4B4B);
  static const Color Blackcolor = Color(0xff383838);
  static const Color GreyCOlor = Color(0xff707070);
  static const Color BackgroundDark = Color(0xff141922);
  static const Color BlackDark = Color(0xff1E1E1E);
  static ThemeData lightTheme =ThemeData(
      scaffoldBackgroundColor: backgroundLight ,

    floatingActionButtonTheme: FloatingActionButtonThemeData(
                               backgroundColor: primaryColor,
                        shape: StadiumBorder(side: BorderSide(
                          color: whiteColor , width: 4))
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: primaryColor,
      unselectedItemColor: GreyCOlor,
      backgroundColor: Colors.transparent ,
      elevation: 0
    ),

    appBarTheme: AppBarTheme( backgroundColor: primaryColor,
    elevation: 0),

    textTheme: TextTheme(titleLarge: TextStyle(
      fontSize: 24 , fontWeight: FontWeight.bold,
      color: whiteColor
    ),
      titleMedium:  TextStyle(
          fontSize: 20 , fontWeight: FontWeight.bold,
          color: Blackcolor
      ),
      titleSmall:  TextStyle(
          fontSize: 18 , fontWeight: FontWeight.bold,
          color: Blackcolor
      ),
    )
  );

}