import 'package:app/tvek_flutter_core/localization/tvek_app_localization.dart';
import 'package:app/tvek_flutter_core/localization/tvek_page.dart';
import 'package:app/ui/widgets/about_page.dart';
import 'package:app/ui/widgets/prayer_timing_view.dart';
import 'package:app/ui/widgets/routemap_view.dart';
import 'package:app/ui/widgets/saints_view.dart';
import 'package:app/ui/widgets/welcome_page.dart';
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
        primarySwatch: Colors.primaries.last,
        secondaryHeaderColor: Colors.blueAccent,
      ),
      locale: _locale,
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      routes: {
        '/about': (context) => AboutPage(),
        '/prayer-timings': (context) => TVEKPage(body: [PrayerTimingView()]),
        '/route-map': (context) => RouteMapView(),
        '/saints': (context) => SaintsView()
      },
    );
  }
}