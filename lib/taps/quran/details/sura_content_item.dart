import 'package:flutter/material.dart';
import 'package:islamiiii/utils/app_colors.dart';

class SuraContentItem extends StatelessWidget {
  String suraContent;
  int index;
  SuraContentItem({super.key,required this.suraContent,required this.index});


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: 10
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(
          color: AppColors.primaryColor,
          width: 2,
        )
      ),
      child: Text(' $suraContent [${index+1}]  ',
      textDirection: TextDirection.rtl,
      textAlign:TextAlign.center ,
      style: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: AppColors.primaryColor
      ),),
    );
  }
}
