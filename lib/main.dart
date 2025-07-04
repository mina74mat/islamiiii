
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islamiiii/home_screen.dart';
import 'package:islamiiii/intro_screen.dart';
import 'package:islamiiii/splash_screen.dart';
import 'package:islamiiii/taps/quran/details/sura_details.dart';
import 'package:islamiiii/utils/app_theme.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {

  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: IntroScreen.routeName,
      routes:{
        SplashScreen.routeName : (context)=> SplashScreen(),
        HomeScreen.routeName: (context)=>HomeScreen(),
        SuraDetails.routeName: (context)=>SuraDetails(),
        IntroScreen.routeName: (context)=>IntroScreen(),

      },

      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.dark,


    );
  }
}
