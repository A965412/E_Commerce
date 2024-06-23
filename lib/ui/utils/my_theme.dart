import 'package:e_commerce/ui/utils/my_colors.dart';
import 'package:flutter/material.dart';

class MyTheme {
  static ThemeData myTheme = ThemeData(
    primaryColor: Colors_App.blueColor,
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: Colors_App.whiteColor,
        selectedItemColor: Colors_App.whiteColor),
    appBarTheme: const AppBarTheme(
      centerTitle: true,
      titleSpacing: 1,
      foregroundColor: Colors_App.blueColor,
    ),
    textTheme: const TextTheme(
      titleLarge: TextStyle(
        fontFamily: 'Poppins',
        color: Colors_App.whiteColor,
        fontWeight: FontWeight.w600,
        fontSize: 20,
      ),
      titleMedium: TextStyle(
        fontFamily: 'Poppins',
        color: Colors_App.whiteColor,
        fontWeight: FontWeight.w500,
        fontSize: 18,
      ),
      titleSmall: TextStyle(
        fontFamily: 'Poppins',
        color: Colors_App.blueColor,
        fontWeight: FontWeight.w300,
        fontSize: 16,
      ),
      bodyMedium: TextStyle(
        fontFamily: 'Poppins',
        color: Colors_App.whiteColor,
        fontWeight: FontWeight.w400,
        fontSize: 17,
      ),
    ),
  );
}
