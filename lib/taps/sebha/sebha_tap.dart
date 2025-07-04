// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// class SebhaTap extends StatelessWidget {
//   const SebhaTap({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     var width = MediaQuery.of(context).size.width;
//     var height = MediaQuery.of(context).size.height;
//     return Expanded(
//       child: Column(
//         children: [
//           SizedBox(height: height*0.02,),
//
//           Text('سَبِّحِ اسْمَ رَبِّكَ الأعلى ',
//             style: TextStyle(
//               fontSize: 36,
//               color: Color(0xffffffff),
//               fontWeight: FontWeight.bold
//             ),),
//           SizedBox(height: height*0.02,),
//           Container(
//               height: height*0.09,
//               width: width*0.33,
//               child: Image.asset('assets/images/group37.png',)),
//           Stack(
//             children: [
//               InkWell(
//                 onTap: (){},
//                 child: Container(
//                 child: Image.asset('assets/images/sebha_body1.png'),
//                 height: height*0.4,
//                 width: double.infinity,
//                             ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.symmetric(
//                    vertical: 130.0,
//                   horizontal: 125,
//                 ),
//                 child: Column(
//                   children: [
//                     Text('سبحان الله',
//                     style: TextStyle(
//                       fontWeight: FontWeight.bold,
//                       fontSize: 36,
//                       color: Colors.white
//                     ),),
//                     SizedBox(height: height*0.02,),
//
//                     Text('10',
//                       style: TextStyle(
//                           fontWeight: FontWeight.bold,
//                           fontSize: 36,
//                           color: Colors.white
//                       ),
//                     )
//                   ],
//                 ),
//               )
//
//             ],
//           )
//
//
//         ],
//       ),
//     );
//   }
// }



//
// import 'package:flutter/material.dart';
//
// class SebhaTap extends StatefulWidget {
//   const SebhaTap({super.key});
//
//   @override
//   State<SebhaTap> createState() => _SebhaTapState();
// }
//
// class _SebhaTapState extends State<SebhaTap> with SingleTickerProviderStateMixin {
//   late AnimationController controller;
//   double turns = 0;
//   int count = 0;
//
//   @override
//   void initState() {
//     super.initState();
//     controller = AnimationController(
//       vsync: this,
//       duration: Duration(milliseconds: 300),
//     );
//   }
//
//   void onTapSebha() {
//     setState(() {
//       count++;
//       turns += 1 / 20;
//
//       if (count >= 33) {
//         count = 0;
//         turns = 0;
//       }
//     });
//
//     controller.forward(from: 0);
//   }
//
//   @override
//   void dispose() {
//     controller.dispose();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     var width = MediaQuery.of(context).size.width;
//     var height = MediaQuery.of(context).size.height;
//
//     return Expanded(
//       child: Column(
//         children: [
//           SizedBox(height: height * 0.02),
//           Text(
//             'سَبِّحِ اسْمَ رَبِّكَ الأعلى ',
//             style: TextStyle(
//               fontSize: 36,
//               color: Color(0xffffffff),
//               fontWeight: FontWeight.bold,
//             ),
//           ),
//           SizedBox(height: height * 0.02),
//           Container(
//             height: height * 0.09,
//             width: width * 0.33,
//             child: Image.asset('assets/images/group37.png'),
//           ),
//
//           /// Stack فيها السبحة والرأس والعداد
//           Stack(
//             children: [
//               GestureDetector(
//                 onTap: onTapSebha,
//                 child: RotationTransition(
//                   turns: AlwaysStoppedAnimation(turns),
//                   child: Container(
//                     height: height * 0.4,
//                     width: double.infinity,
//                     child: Image.asset('assets/images/sebha_body1.png'),
//                   ),
//                 ),
//               ),
//
//               /// النص والعداد
//               Padding(
//                 padding: const EdgeInsets.symmetric(
//                   vertical: 130.0,
//                   horizontal: 125,
//                 ),
//                 child: Column(
//                   children: [
//                     Text(
//                       'سبحان الله',
//                       style: TextStyle(
//                         fontWeight: FontWeight.bold,
//                         fontSize: 36,
//                         color: Colors.white,
//                       ),
//                     ),
//                     SizedBox(height: height * 0.02),
//                     Text(
//                       '$count',
//                       style: TextStyle(
//                         fontWeight: FontWeight.bold,
//                         fontSize: 36,
//                         color: Colors.white,
//                       ),
//                     ),
//                   ],
//                 ),
//               )
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }








import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';
import 'package:islamiiii/taps/sebha/widget/sebha_image1.dart';
import 'package:islamiiii/taps/sebha/widget/sebha_image_body.dart';
import 'package:islamiiii/taps/sebha/widget/title_text.dart';

class SebhaTap extends StatefulWidget {
  const SebhaTap({super.key});

  @override
  State<SebhaTap> createState() => _SebhaTapState();
}

class _SebhaTapState extends State<SebhaTap> {
  int count = 1;
  double turns = 0;
  List<String> azkar = ['سبحان الله', 'الحمد لله', 'الله أكبر'];
  int zekrIndex = 0;

  void onTapSebha() {
    setState(() {
      turns += 3 / 33;

      if (count == 33) {
        count = 1;
        zekrIndex = (zekrIndex + 1) % azkar.length;
      } else {
        count++;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    return Expanded(
      child: Column(
        children: [
          SizedBox(height: height * 0.02),
         TitleText(),



          SizedBox(height: height * 0.02),

          SebhaImage1(),
          Stack(
            children: [
              GestureDetector(
                onTap: onTapSebha,
                child: TweenAnimationBuilder(
                  tween: Tween<double>(begin: 0, end: turns),
                  duration: Duration(milliseconds: 300),
                  builder: (context, double angle, child) {
                    return Transform.rotate(
                      angle: angle * 2 * pi,
                      child: child,
                    );
                  },
                  child:
                      SebhaImageBody(),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 130.0,
                  horizontal: 125,
                ),
                child: Column(
                  children: [
                    Text(
                      azkar[zekrIndex],
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 36,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: height * 0.02),
                    Text(
                      '$count',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 36,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}