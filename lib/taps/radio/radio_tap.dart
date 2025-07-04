import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islamiiii/taps/radio/widget/choose_radio_or_reciter.dart';
import 'package:islamiiii/utils/app_colors.dart';

class RadioTap extends StatelessWidget {
  const RadioTap({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: 26.0),
            child: Column(
              children: [

                ChooseRadioOrReciter(),

                SizedBox(height: height*0.04,),

                    Expanded(
                      child: ListView.separated(
                        separatorBuilder:(context, index) {
                          return SizedBox(height: height*0.01,);
                        } ,
                        itemCount:20 ,
                        itemBuilder: (context, index) {
                          return Stack(
                            children:[

                              Container(
                                  padding:EdgeInsets.only(
                                      top: 40
                                  ) ,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: AppColors.primaryColor
                                  ),
                                  height: height*0.14,
                                  child:Image.asset('assets/images/mask_group.png',
                                    width: double.infinity,
                                    height: double.infinity,
                                    fit: BoxFit.cover,)
                              ),


                              Center(
                                child: Column(
                                  children: [
                                    Text('Radio Ibrahim Al-Akdar',
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,

                                      ),),

                                    SizedBox(height: height*0.06,),

                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [

                                        Icon(Icons.skip_next,
                                          size: 34,),
                                        SizedBox(
                                          width: width*0.05,
                                        ),
                                        Icon(Icons.pause,
                                            size: 34),
                                        SizedBox(
                                          width: width*0.05,
                                        ),
                                        Icon(Icons.volume_up_rounded,
                                          size: 34,),
                                      ],
                                    )
                                  ],
                                ),
                              )


                            ],
                          );
                        }


                      ),
                    )



              ],
            ),
          ),
        )

    ;
  }
}
