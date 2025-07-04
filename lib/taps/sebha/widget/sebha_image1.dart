import 'package:flutter/material.dart';

class SebhaImage1 extends StatelessWidget {
  const SebhaImage1({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return    Container(
      height: height * 0.09,
      width: width * 0.33,
      child: Image.asset('assets/images/group37.png'),
    );
  }
}
