import 'package:flutter/material.dart';

class MyColors {
  static const Color background = Color(0xffFAFAFA);
  static const Color primary = Color(0xffFA6400);
  static const Color primaryLight = Color(0xffFFD8BD);
  static const Color secondary = Color(0xffD0D0D0);
  static const Color caption = Color(0xffDFDFDF);
  static const Color darkerCaption = Color(0xff6E6E6E);
  static const Color accent = Color(0xffFA6400);

  static MaterialColor primaryMaterial = const MaterialColor(
    0xFFFA6400,
    const <int, Color>{
      50: const Color(0xFFFFF3E0),
      100: const Color(0xFFFFE0B2),
      200: const Color(0xFFFFCC80),
      300: const Color(0xFFFFB74D),
      400: const Color(0xFFFFA726),
      500: const Color(0xFFFA6400),
      600: const Color(0xFFFB8C00),
      700: const Color(0xFFF57C00),
      800: const Color(0xFFEF6C00),
      900: const Color(0xFFE65100),
    },
  );

  static const Color white = Colors.white;
  static const Color almostWhite = Color(0xffF7F7F7);

  static const Color black = Colors.black;
  static const Color midnight = Color(0xff1F2024);

  static const Color alertBlue = Color(0xff027AFE);
  static const Color alertRed = Colors.red;

  static const Color transparent = Colors.transparent;
}

class MySpaces {
  static const SizedBox smallGap = SizedBox(height: 9);
  static const SizedBox largeGap = SizedBox(height: 18);
  static Widget buildDivider({double vertical: 9, double horizontal: 9}) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: vertical,
        horizontal: horizontal,
      ),
      child: Container(
        color: MyColors.caption,
        width: double.infinity,
        height: 1,
      ),
    );
  }
}
