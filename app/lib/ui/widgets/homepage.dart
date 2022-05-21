import 'package:app/tvek_flutter_core/localization/tvek_app_localization.dart';
import 'package:app/tvek_flutter_core/localization/tvek_carousel_widget.dart';
import 'package:app/tvek_flutter_core/localization/tvek_scaffold.dart';
import 'package:app/ui/widgets/prayer_timing_view.dart';
import 'package:app/ui/widgets/welcome_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:format/format.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<CarouselRow> bannerRows = [
      CarouselRow(AppLocalizations.of(context)!.bannerText1, "images/banner_1.jpeg"),
      CarouselRow(AppLocalizations.of(context)!.bannerText2, "images/banner_2.jpeg"),
      CarouselRow(AppLocalizations.of(context)!.bannerText3, "images/banner_3.jpeg"),
      CarouselRow(AppLocalizations.of(context)!.bannerText4, "images/banner_4.jpeg"),
      CarouselRow(AppLocalizations.of(context)!.bannerText5, "images/banner_5.jpeg"),
    ];
    final siteName = TVEKAppLocalization.of(context)!.siteName;

    return TVEKScaffoldWidget(
        body: Center(
          // Center is a layout widget. It takes a single child and positions it
          // in the middle of the parent.
          child: Column(
            // Column is also a layout widget. It takes a list of children and
            // arranges them vertically. By default, it sizes itself to fit its
            // children horizontally, and tries to be as tall as its parent.
            //
            // Invoke "debug painting" (press "p" in the console, choose the
            // "Toggle Debug Paint" action from the Flutter Inspector in Android
            // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
            // to see the wireframe for each widget.
            //
            // Column has various properties to control how it sizes itself and
            // how it positions its children. Here we use mainAxisAlignment to
            // center the children vertically; the main axis here is the vertical
            // axis because Columns are vertical (the cross axis would be
            // horizontal).
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CarouselWidget(rows: bannerRows, transitionTime: 5,),
              WelcomePage(title: TVEKAppLocalization.of(context)!.welcomeTo.format(siteName),),
              PrayerTimingView()
            ],
          ),
        ) // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

