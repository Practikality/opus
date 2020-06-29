import 'package:flutter/material.dart';
import 'package:opus/global/colorsAndSpaces.dart';
import 'package:opus/state/opusModel.dart';
import 'package:opus/widgets/generic/customText.dart';
import 'package:scoped_model/scoped_model.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final OpusModel model = new OpusModel();
  final globalScaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return ScopedModel(
      model: model,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Opus",
        theme: ThemeData(
          fontFamily: "roboto",
          primarySwatch: MyColors.blue,
        ),
        home: Scaffold(
          key: globalScaffoldKey,
          resizeToAvoidBottomPadding: false,
          backgroundColor: MyColors.almostWhite,
          body: Center(
            child: CustomText("Opus"),
          ),
        ),
      ),
    );
  }
}
