import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  CustomText(
      {super.key,
      required this.title,
      this.fontSize = 14,
      this.fontWeight = FontWeight.w500,
      this.color,
      this.textAlign = TextAlign.center});

  String title;

  double fontSize;

  FontWeight fontWeight;

  Color? color = Colors.black;
  TextAlign textAlign;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      textAlign: textAlign,
      maxLines: 1,
      style: TextStyle(
        color: color,
        fontSize: fontSize,
        fontFamily: 'Montserrat',
        fontWeight: fontWeight,
      ),
    );
  }
}
