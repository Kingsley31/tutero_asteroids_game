
 import 'package:flutter/material.dart';

 ThemeData getAppTheme(){
  return ThemeData(
    scaffoldBackgroundColor: const Color(0xFF000000),
    primaryColor: const Color(0xFF000000),
    textTheme: const TextTheme(
      headlineLarge: TextStyle(
          fontSize: 50,
          color: Color(0xFFFFFFFF),
          fontWeight: FontWeight.bold
      ),
      labelLarge: TextStyle(
          fontSize: 18,
          color: Color(0xFFFFFFFF),
          fontWeight: FontWeight.normal
      ),
    ),
    buttonTheme:const ButtonThemeData(
        padding: EdgeInsets.symmetric(vertical: 15,horizontal: 50),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(30))),
        buttonColor: Color(0xFF3F51B5),
        focusColor:  Color(0xFF3F51B5),
        hoverColor:  Color(0xFF3F51B5),
        highlightColor:  Color(0xFF3F51B5),
    ),
  );
}
