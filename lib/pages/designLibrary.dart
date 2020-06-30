import 'package:flutter/material.dart';
import 'package:opus/functions/universalFunctions.dart';
import 'package:opus/global/colorsAndSpaces.dart';
import 'package:opus/widgets/generic/customButton.dart';
import 'package:opus/widgets/generic/customField.dart';
import 'package:opus/widgets/generic/customText.dart';

class DesignLibrary extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CustomText(
          "Design Library",
          fontSize: 24,
          color: MyColors.white,
          productSans: true,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: ListView(
          scrollDirection: Axis.vertical,
          children: <Widget>[
            CustomText(
              "TYPEFACES",
              fontSize: 12,
              letterSpacing: 0.4,
              color: MyColors.darkerCaption,
            ),
            MySpaces.smallGap,
            CustomText(
              "Headline 5",
              fontSize: 24,
              productSans: true,
            ),
            CustomText(
              "Caption",
              fontSize: 12,
              letterSpacing: 0.4,
              color: MyColors.darkerCaption,
            ),
            MySpaces.buildDivider(vertical: 21),
            CustomText(
              "BUTTONS",
              fontSize: 12,
              letterSpacing: 0.4,
              color: MyColors.darkerCaption,
            ),
            MySpaces.smallGap,
            CustomButton(label: "Filled", onPress: () {}),
            MySpaces.buildDivider(vertical: 21),
            CustomText(
              "FIELDS",
              fontSize: 12,
              letterSpacing: 0.4,
              color: MyColors.darkerCaption,
            ),
            MySpaces.smallGap,
            CustomField(
              focusNode: FocusNode(),
              hint: "Optional start icon",
              validator: (_) {},
              onSave: (_) {},
              icon: Icons.assignment,
            ),
            MySpaces.buildDivider(vertical: 21),
            CustomText(
              "DIALOGS",
              fontSize: 12,
              letterSpacing: 0.4,
              color: MyColors.darkerCaption,
            ),
            MySpaces.smallGap,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width / 2.5,
                  child: CustomButton(
                    label: "Alert",
                    labelColor: MyColors.midnight,
                    onPress: () {
                      UniversalFunctions.showAlert(context, "Alert",
                          "Use this to notify users of something");
                    },
                    color: MyColors.secondary,
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width / 2.5,
                  child: CustomButton(
                    label: "Confirmation",
                    labelColor: MyColors.midnight,
                    onPress: () {
                      UniversalFunctions.showActionDialog(
                        context: context,
                        title: "Action",
                        description:
                            "Use this to carry out an action with optional negative button, and choose between red or blue label color.",
                        positiveCallback: () {},
                        otherLabel: "Cancel",
                        otherIsNegative: true,
                        otherCallback: () {},
                      );
                    },
                    color: MyColors.secondary,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
