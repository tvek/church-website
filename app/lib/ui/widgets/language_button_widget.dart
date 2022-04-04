import 'package:app/tvek_flutter_core/localization/tvek_app_localization.dart';
import 'package:flutter/material.dart';

import 'main_app.dart';

class LanguageButtonWidget extends StatelessWidget {

  final Map<String, Locale> languageMap = TVEKAppLocalization.getSupportedLocaleMap();

  @override
  Widget build(BuildContext context) {
    print(languageMap);
    List<DropdownMenuItem> languageDropDownItems = languageMap.entries.map((language) => DropdownMenuItem(
      value: language.value.languageCode,
      child: Text( language.key),
    )).toList();
    print(languageDropDownItems.map((e) => e.value));
    return DropdownButtonHideUnderline(child: DropdownButton(
      icon: Icon(Icons.language),
      alignment: Alignment.center,
      items: languageDropDownItems.toList(),
      value: TVEKAppLocalization.of(context)!.localeName,
      onChanged: (dynamic value) { MainApp.of(context)!.setLocale(Locale(value!)); },
    ));
  }
}
