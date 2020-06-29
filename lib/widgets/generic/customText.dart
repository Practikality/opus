import 'package:flutter/material.dart';
import 'package:opus/global/colorsAndSpaces.dart';

class CustomText extends StatelessWidget {
  final String text;
  final FontWeight fontWeight;
  final TextAlign textAlign;
  final Color color;
  final double fontSize;
  final TextDecoration textDecoration;
  final double letterSpacing;
  final bool productSans;
  const CustomText(
    this.text, {
    this.fontWeight: FontWeight.normal,
    this.textAlign: TextAlign.start,
    this.color: MyColors.black,
    this.fontSize: 20,
    this.textDecoration: TextDecoration.none,
    this.letterSpacing: 0,
    this.productSans: false,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: TextStyle(
        fontFamily: productSans ? 'productsans' : 'roboto',
        fontWeight: fontWeight,
        color: color,
        letterSpacing: letterSpacing,
        fontSize: fontSize,
        decoration: textDecoration,
      ),
    );
  }
}
