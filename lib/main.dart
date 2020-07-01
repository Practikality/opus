import 'package:flutter/material.dart';
import 'package:opus/global/colorsAndSpaces.dart';
import 'package:opus/global/developer.dart';
import 'package:opus/global/myStrings.dart';
import 'package:opus/pages/designLibrary.dart';
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
        routes: {
          '/design-library': (context) => DesignLibrary(),
        },
        title: MyStrings.appName,
        theme: ThemeData(
          fontFamily: "roboto",
          primarySwatch: MyColors.primaryMaterial,
        ),
        home: Scaffold(
          key: globalScaffoldKey,
          resizeToAvoidBottomPadding: false,
          backgroundColor: MyColors.background,
          appBar: AppBar(
            elevation: 0,
            title: CustomText(
              MyStrings.appName,
              fontSize: 24,
              color: MyColors.white,
              productSans: true,
            ),
            actions: <Widget>[
              Developer.isTesting
                  ? Builder(
                      builder: (context) => IconButton(
                        icon: Icon(Icons.photo_filter),
                        onPressed: () =>
                            Navigator.pushNamed(context, '/design-library'),
                      ),
                    )
                  : Container(),
            ],
          ),
          body: Container(),
        ),
      ),
    );
  }
}
