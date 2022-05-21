import 'dart:html';

import 'package:app/tvek_flutter_core/localization/tvek_app_localization.dart';
import 'package:app/tvek_flutter_core/localization/tvek_section.dart';
import 'package:drop_cap_text/drop_cap_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:format/format.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return TVEKSection(
      title: title,
      body: DropCapText(
          TVEKAppLocalization.of(context)!.welcomePageDescription,
          dropCapPadding: EdgeInsets.all(8),
          dropCap: DropCap(
            width: 300,
            height: 300,
            child: Image(image: AssetImage("images/pampady_church_2010.jpeg"),),
          )
      ), headerStyle: Theme.of(context).textTheme.headline3,
    );
  }
}
