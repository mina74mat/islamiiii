import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:islamiiii/utils/app_colors.dart';
import 'home_screen.dart';

class IntroScreen extends StatelessWidget {
  static const String routeName = 'intro_screen';

  IntroScreen({super.key});

  final List<PageViewModel> pages = [
    PageViewModel(
      title: '',
      bodyWidget: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [

          Image.asset('assets/images/Logo.png', ),
          SizedBox(height: 20,),
          Image.asset('assets/images/frame_33.png', ),
          SizedBox(height: 30,),
          Text('Welcome To Islmi App',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24,
              color: AppColors.primaryColor
            ),
          )

        ],
      ),


    ),

    PageViewModel(
      title: '',
      bodyWidget: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset('assets/images/Logo.png', ),
          SizedBox(height: 20,),
          Image.asset('assets/images/frame44.png', ),
          SizedBox(height: 30,),
          Text('Welcome To Islami',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
                color: AppColors.primaryColor
            ),
          ),
          SizedBox(height: 30,),
          Text('We Are Very Excited To Have You In Our Community',
            textAlign:TextAlign.center ,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: AppColors.primaryColor
            ),
          ),

        ],
      ),


    ),

    PageViewModel(
      title: '',
      bodyWidget: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [

          Image.asset('assets/images/Logo.png', ),
          SizedBox(height: 20,),
          Image.asset('assets/images/frame55.png', ),
          SizedBox(height: 30,),
          Text('Reading the Quran',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
                color: AppColors.primaryColor
            ),
          ),
          SizedBox(height: 30,),
          Text('Read, and your Lord is the Most Generous',
            textAlign:TextAlign.center ,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: AppColors.primaryColor
            ),
          ),

        ],
      ),


    ),

    PageViewModel(
      title: '',
      bodyWidget: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [

          Image.asset('assets/images/Logo.png', ),
          SizedBox(height: 16,),
          Image.asset('assets/images/frame_66.png', ),
          SizedBox(height: 16,),
          Text('Bearish',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
                color: AppColors.primaryColor
            ),
          ),
          SizedBox(height: 30,),
          Text('Praise the name of your Lord, the Most High',
            textAlign:TextAlign.center ,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: AppColors.primaryColor
            ),
          ),
        ],
      ),


    ),

    PageViewModel(
      title: '',
      bodyWidget: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [

          Image.asset('assets/images/Logo.png', ),
          SizedBox(height: 16,),
          Image.asset('assets/images/frame_77.png', ),
          SizedBox(height: 16,),
          Text('Holy Quran Radio',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
                color: AppColors.primaryColor
            ),
          ),
          SizedBox(height: 20,),
          Text('You can listen to the Holy Quran Radio through the application for free and easily',
            textAlign:TextAlign.center ,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: AppColors.primaryColor
            ),
          ),

        ],
      ),


    ),
  ];

  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      pages: pages,
      showDoneButton: true,
      showBackButton: true,
      done: const Text("Finish",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: AppColors.primaryColor,
            fontSize: 16,)),
      onDone: () {
        Navigator.pushReplacementNamed(context, HomeScreen.routeName
        );
      },
      back: Text('Back',
        style: TextStyle(
            color: AppColors.primaryColor,
            fontSize: 16,
            fontWeight: FontWeight.bold
        ),),
      next: Text('Next',
      style: TextStyle(
        color: AppColors.primaryColor,
        fontSize: 16,
        fontWeight: FontWeight.bold
      ),),
      dotsDecorator: DotsDecorator(

        size: const Size(10, 10),
        activeSize: const Size(22, 10),
        activeColor: AppColors.primaryColor,
        color: Colors.grey,
        spacing: const EdgeInsets.symmetric(horizontal: 4),
        activeShape:
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      ),
      globalBackgroundColor: AppColors.blackBgColor,
    );
  }
}
