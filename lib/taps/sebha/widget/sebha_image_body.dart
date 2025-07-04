import 'package:flutter/material.dart';

class SebhaImageBody extends StatelessWidget {
  const SebhaImageBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Container(
      child: Image.asset('assets/images/sebha_body1.png'),
      height: height * 0.4,
      width: double.infinity,
    );
  }
}
