import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islamiiii/taps/quran/details/sura_details.dart';
import 'package:islamiiii/taps/quran/sura_item.dart';
import 'package:islamiiii/utils/app_colors.dart';

class QuranTap extends StatelessWidget {
  const QuranTap({super.key});

  @override
  Widget build(BuildContext context) {
    var width =MediaQuery.of(context).size.width;
    var height =MediaQuery.of(context).size.height;
    return   Padding(

        padding: EdgeInsets.symmetric(
        horizontal:width*0.04),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
         TextField(
            style: TextStyle(
              fontWeight:FontWeight.bold,
              fontSize: 18,
              color:Colors.white,

            ),
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16),
                borderSide: BorderSide(color: AppColors.primaryColor,
                width: 2)
              ),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                  borderSide: BorderSide(color: AppColors.primaryColor,
                      width: 2)
              ),
              prefix: Image.asset('assets/images/logo_image.png'),
              hintText: 'Sura Name',
              hintStyle: TextStyle(
                  color:Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold
              ),
            ),
          ),


        SizedBox(height: height*0.02,),
        Text('Most Recently',
        style: TextStyle(
          color: Colors.white,
          fontSize: 18,
          fontWeight: FontWeight.bold

        ),),
        SizedBox(height: height*0.01,),
        SizedBox(height: height*0.15,
        width: double.infinity,
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemCount:10 ,
          separatorBuilder: (context, index) {
            return SizedBox(
              height: height*0.01,
              width: width*0.02,
            ) ;
          },

          itemBuilder:(context, index) {
            return  Container(padding: EdgeInsets.symmetric(
              horizontal: width*0.03
            ),

              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: AppColors.primaryColor,
              ),
              width: width*0.68,

              child: Row(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Al-Anbiya',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 22
                          ),),
                          Text('الأنبياء',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 22
                          ),),
                          Text('112 Verses  ',
                            style: TextStyle(
                                fontSize: 16
                            ),
                          ),
                        ],

                      ),
                          Image.asset('assets/images/image_anbiya.png'),
                    ],

                  ),
            );
          }
          ,

        ),
        ),

        SizedBox(height: height*0.01,),

        Text('Suras List',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.white
          ),),
        SizedBox(height: height*0.01,),

        Expanded(child: ListView.separated(
          padding: EdgeInsets.zero,

            itemBuilder: (context, index) {
              return InkWell(

                onTap: (){
                  Navigator.of(context).pushNamed(
                      SuraDetails.routeName,
                  arguments: index);
                },
                  child: SuraItem(
                    index: index,

                  ));

            },
            separatorBuilder:(context, index) {
              return Divider(
                color: Colors.white,
                thickness: 2,
                indent: 40,
                endIndent: 40,
              );
            }
          ,
            itemCount: 114,








        ))
      ],

    ));
  }
}
