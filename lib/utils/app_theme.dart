import 'package:flutter/material.dart';
import 'package:islamiiii/utils/app_colors.dart';

class AppTheme{
  static final ThemeData darkTheme= ThemeData(
    scaffoldBackgroundColor: AppColors.transparentColor,
    // bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    //   selectedItemColor: Colors.white ,
    //   unselectedItemColor:Color(0xff202020) ,
    // )
    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.blackBgColor,
      centerTitle: true,
      iconTheme: IconThemeData(
        color: AppColors.primaryColor,
      )
    )


  );


}