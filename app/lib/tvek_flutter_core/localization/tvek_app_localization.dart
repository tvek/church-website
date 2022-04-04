import 'package:flutter/cupertino.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class TVEKAppLocalization {

  static final Map<String, Locale> _languageMap = {
    "English": Locale('en', ''),
    "മലയാളം": Locale('ml', ''),
    "हिन्दी": Locale('hi', '')
  };

  static Iterable<LocalizationsDelegate> getLocalizationDelegate(){
    return [
      AppLocalizations.delegate,
      GlobalMaterialLocalizations.delegate,
      GlobalWidgetsLocalizations.delegate,
      GlobalCupertinoLocalizations.delegate,
    ];
  }

  static Iterable<Locale> getSupportedLocales() {
    return _languageMap.values;
  }

  static Map<String, Locale> getSupportedLocaleMap() {
    return _languageMap;
  }

  static AppLocalizations? of(BuildContext context) {
    AppLocalizations? localizer = AppLocalizations.of(context);
    return localizer;
    
  }
}