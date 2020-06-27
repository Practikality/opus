import 'package:flutter/material.dart';
import 'package:opus/global/colorsAndSpaces.dart';
import 'package:opus/widgets/generic/customText.dart';

class CustomButton extends StatelessWidget {
  final String label;
  final Function onPress;
  final Color color;
  CustomButton({
    @required this.label,
    @required this.onPress,
    this.color: MyColors.primary,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      color: color,
      onPressed: onPress,
      child: Container(
        padding: EdgeInsets.symmetric(
          vertical: 15,
        ),
        width: double.infinity,
        child: CustomText(
          label,
          color: MyColors.white,
          textAlign: TextAlign.center,
          productSans: true,
        ),
      ),
    );
  }
}
