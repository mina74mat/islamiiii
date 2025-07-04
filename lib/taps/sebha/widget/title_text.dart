import 'package:flutter/material.dart';

class TitleText extends StatelessWidget {
  const TitleText({super.key});

  @override
  Widget build(BuildContext context) {
    return  Text(
      'سَبِّحِ اسْمَ رَبِّكَ الأعلى ',
      style: TextStyle(
        fontSize: 36,
        color: Color(0xffffffff),
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
