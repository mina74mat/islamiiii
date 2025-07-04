import 'package:flutter/material.dart';
import 'package:islamiiii/taps/quran/quran_resources.dart';

class SuraItem extends StatelessWidget {
  int index;
  SuraItem({super.key,required this.index});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [

        Stack(
          alignment: Alignment.center,
          children: [
            Image.asset('assets/images/arabic-art-svgrepo-com 1.png'),
            Text('${index+1}',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),)
          ],
        ),
        
        
        SizedBox(width: 25,),
        
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Text(QuranResources.englishQuranList[index],
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white
          ),),
            Text('${QuranResources.versesNumberList[index]} Verses',
            style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Colors.white
            ),
          ),
          
        ],),
        
        Spacer(),
         
        Text(QuranResources.arabicQuranList[index],
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white
        ),)



      ],
    );
  }
}
