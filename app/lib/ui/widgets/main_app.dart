import 'package:app/tvek_flutter_core/localization/tvek_app_localization.dart';
import 'package:app/ui/widgets/about_page.dart';
import 'package:flutter/material.dart';

import 'homepage.dart';

class MainApp extends StatefulWidget {

  @override
  _MainAppState createState() => _MainAppState();

  static _MainAppState? of(BuildContext context) =>
      context.findAncestorStateOfType<_MainAppState>();
}

class _MainAppState extends State<MainApp> {

  Locale _locale = Locale("en");

  void setLocale(Locale value) {
    setState(() {
      _locale = value;
    });
  }

  String _initialize(context) {
    _locale = Locale(TVEKAppLocalization.of(context)!.localeName);
    return TVEKAppLocalization.of(context)!.siteName;
  }

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      onGenerateTitle: _initialize,
      localizationsDelegates: TVEKAppLocalization.getLocalizationDelegate(),
      supportedLocales: TVEKAppLocalization.getSupportedLocales(),
      theme: ThemeData(
        primarySwatch: Colors.orange,
        secondaryHeaderColor: Colors.blueAccent
      ),
      locale: _locale,
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      routes: {
        'about': (context) => AboutPage()
      },
    );
  }
}