import 'package:flutter/material.dart';
import 'package:opus/global/colorsAndSpaces.dart';
import 'package:opus/widgets/generic/customText.dart';

class CustomButton extends StatelessWidget {
  final String label;
  final Function onPress;
  final Color color;
  final Color labelColor;
  CustomButton({
    @required this.label,
    @required this.onPress,
    this.color: MyColors.primary,
    this.labelColor: MyColors.white,
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
          color: labelColor,
          textAlign: TextAlign.center,
          productSans: true,
        ),
      ),
    );
  }
}
