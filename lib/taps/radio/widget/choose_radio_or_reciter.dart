import 'package:flutter/material.dart';

import '../../../utils/app_colors.dart';

class ChooseRadioOrReciter extends StatelessWidget {
  const ChooseRadioOrReciter({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          padding:EdgeInsets.symmetric(
              horizontal: 55,
              vertical: 10) ,
          decoration: BoxDecoration(
              color: AppColors.primaryColor,
              borderRadius: BorderRadius.circular(22)
          ),
          height:height*0.05 ,
          width: width*0.4,
          child: Text('Radio',
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500
            ),),

        ),
        SizedBox(width:width*0.03,),
        Container(
          padding:EdgeInsets.symmetric(
              horizontal: 55,
              vertical: 10) ,
          decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.25),
              borderRadius: BorderRadius.circular(22)
          ),
          height:height*0.05 ,
          width: width*0.4,
          child: Text('Reciters',
            style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w500
            ),),

        ),
      ],
    );
  }
}
