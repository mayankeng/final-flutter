import 'package:flutter/material.dart';
// import 'package:flutter/material.dart';


class Mytheme{
  static ThemeData get lighttheme  {
  return ThemeData(
    primarySwatch: Colors.deepPurple,
    appBarTheme: AppBarTheme(
      color: Colors.white,
      elevation: 0.0,
      iconTheme: IconThemeData(color: Colors.black),
      titleTextStyle: TextStyle(color: Colors.black),
    ),
  );

}
static ThemeData get darktheme {
  return ThemeData(
    brightness: Brightness.dark,

  );
}
}




