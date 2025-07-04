import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islamiiii/taps/hadeth/hadeth_tap.dart';
import 'package:islamiiii/taps/quran/quran_tap.dart';
import 'package:islamiiii/taps/radio/radio_tap.dart';
import 'package:islamiiii/taps/sebha/sebha_tap.dart';
import 'package:islamiiii/taps/time/time_tap.dart';
import 'package:islamiiii/utils/app_assets.dart';
import 'package:islamiiii/utils/app_colors.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'home_screen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}
class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex =0 ;
  List<String> backgroundImages =[
    AppAssets.quranBg,
    AppAssets.hadethBg,
    AppAssets.sebhaBg,
    AppAssets.radioBg,
    AppAssets.timeBg,
  ];
  List<Widget> tabs =[
    QuranTap(),HadethTap(),SebhaTap(),RadioTap(),TimeTap(),
  ];


  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(getBackgroundImage(),
          // backgroundImages[selectedIndex],
        width: double.infinity,
        height: double.infinity,
        fit: BoxFit.fill,),
        Scaffold(
        bottomNavigationBar: Theme(
          data: Theme.of(context).copyWith(
            canvasColor: AppColors.primaryColor
          ),
          child: BottomNavigationBar(
            // type: BottomNavigationBarType.fixed,
            // backgroundColor: AppColors.primaryColor,
              selectedItemColor: Colors.white ,
              unselectedItemColor:Color(0xff202020) ,
              currentIndex: selectedIndex,
              onTap: (index) {
                selectedIndex=index;
                setState(() {

                });

              },

              items: [
                BottomNavigationBarItem(
                  icon: builtBottomNanigationBar(index: 0, imageName: AppAssets.iconQuran),
                 label: 'Quran'
                ),
                BottomNavigationBarItem(
                    icon:builtBottomNanigationBar(index: 1, imageName: AppAssets.iconHadeth),
                    label: 'Hadeth'
                ),
                BottomNavigationBarItem(
                    icon:builtBottomNanigationBar(index: 2, imageName: AppAssets.iconSebha),
                    label: 'Sebha'
                ),
                BottomNavigationBarItem(
                    icon: builtBottomNanigationBar(index: 3, imageName: AppAssets.iconRadio),
                    label: 'Radio'
                ),
                BottomNavigationBarItem(
                    icon: builtBottomNanigationBar(index: 4, imageName: AppAssets.iconTime),
                    label: 'Time'
                ),
              ]
          ),
        ),
          body:Column(

            crossAxisAlignment:CrossAxisAlignment.stretch ,
            children: [
              Image.asset(AppAssets.logo),
              Expanded(child: tabs[selectedIndex])
            ],
          ),

        )
      ],
    );
  }

  Widget builtBottomNanigationBar({required int index,required String imageName}){
   return selectedIndex == index ?
     Container(
        padding: EdgeInsetsGeometry.symmetric(
            vertical: 6,
            horizontal: 20
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(66),
          color: AppColors.blackBgColor,
        ),

        child: ImageIcon(AssetImage(imageName),)):
   ImageIcon(AssetImage(imageName),);
  }

  String getBackgroundImage(){
    switch(selectedIndex){
      case 0 :
        return AppAssets.quranBg;
      case 1 :
        return AppAssets.hadethBg;
      case 2 :
        return AppAssets.sebhaBg;
      case 3 :
        return AppAssets.radioBg;
      case 4 :
        return AppAssets.timeBg;
      default :
        return  AppAssets.quranBg;

    }
  }
}
