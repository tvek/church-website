import 'package:app/tvek_flutter_core/localization/tvek_app_localization.dart';
import 'package:flutter/material.dart';

class AppConstants {
  void of(BuildContext context){
    menuList = [
      MenuItem(TVEKAppLocalization.of(context)!.mainMenuHeader, Icons.home, "/"),
      MenuItem(TVEKAppLocalization.of(context)!.aboutMenu, Icons.history_edu, "about")
    ];
  }

  List<MenuItem>? menuList;
}

class MenuItem{
  String text = "";
  IconData icon = Icons.title;
  String transitionLink = "";
  MenuItem(String text, IconData icon, String transitionLink) {
    this.text = text;
    this.icon = icon;
    this.transitionLink = transitionLink;
  }
}