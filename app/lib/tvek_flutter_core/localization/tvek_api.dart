// import 'package:app/tvek_flutter_core/localization/tvek_firebase.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';

class TVEKAPI{
  static init() async {
    setUrlStrategy(PathUrlStrategy());
    //await TVEKFirebase().init();
  }

  static void navigateToDestination(context, String menuItem) {
    Navigator.pushNamed(context, menuItem);
  }
}