import 'package:app/tvek_flutter_core/localization/tvek_app_localization.dart';
import 'package:flutter/material.dart';

class AppConstants {
  void of(BuildContext context){
    menuList = [
      HomeMenuItem(TVEKAppLocalization.of(context)!.mainMenuHeader, Icons.home, "/"),
      HomeMenuItem(TVEKAppLocalization.of(context)!.aboutMenu, Icons.history_edu, "/about"),
      HomeMenuItem(TVEKAppLocalization.of(context)!.prayerRequests, Icons.message, "/prayer-requests")
    ];
    footerLinkList = [
      HomeMenuItem(TVEKAppLocalization.of(context)!.mainMenuHeader, Icons.home, "/"),
      HomeMenuItem(TVEKAppLocalization.of(context)!.aboutMenu, Icons.history_edu, "/about"),
      HomeMenuItem(TVEKAppLocalization.of(context)!.contactUs, Icons.contact_page, "/contact"),
      HomeMenuItem(TVEKAppLocalization.of(context)!.history, Icons.history_edu, "/history"),
      HomeMenuItem(TVEKAppLocalization.of(context)!.saints, Icons.person_pin_rounded, "/saints"),
      HomeMenuItem(TVEKAppLocalization.of(context)!.festivals, Icons.festival, "/festivals"),
      HomeMenuItem(TVEKAppLocalization.of(context)!.management, Icons.cases_rounded, "/management"),
      HomeMenuItem(TVEKAppLocalization.of(context)!.spiritualOrganization, Icons.church, "/spiritual-oranization"),
      HomeMenuItem(TVEKAppLocalization.of(context)!.gallery, Icons.image_rounded, "/gallery"),
      HomeMenuItem(TVEKAppLocalization.of(context)!.routeMap, Icons.map, "/route-map"),
      HomeMenuItem(TVEKAppLocalization.of(context)!.events, Icons.emoji_flags, "/events"),
      HomeMenuItem(TVEKAppLocalization.of(context)!.prayerTimings, Icons.event, "/prayer-timings")
    ];
    prayerTimingList = [
      PrayerTimingItem(TVEKAppLocalization.of(context)!.sundayFirstService, "05:45 AM", TVEKAppLocalization.of(context)!.morningPrayer, TVEKAppLocalization.of(context)!.church),
      PrayerTimingItem("", "06:30 AM", TVEKAppLocalization.of(context)!.holyEucharist,""),
      PrayerTimingItem(TVEKAppLocalization.of(context)!.sundaySecondService, "08:00 AM", TVEKAppLocalization.of(context)!.morningPrayer, ""),
      PrayerTimingItem("", "09:00 AM", TVEKAppLocalization.of(context)!.holyEucharist,""),
      PrayerTimingItem("Other Days", "07:15 AM", TVEKAppLocalization.of(context)!.morningPrayer, ""),
      PrayerTimingItem("", "07:30 AM", TVEKAppLocalization.of(context)!.holyEucharist, ""),
      PrayerTimingItem(TVEKAppLocalization.of(context)!.wednesday, "10:00 AM", TVEKAppLocalization.of(context)!.marthaMariamSamajam, ""),
      PrayerTimingItem("", "12:00 PM", TVEKAppLocalization.of(context)!.noonPrayer, ""),
      PrayerTimingItem(TVEKAppLocalization.of(context)!.everyFirstSunday, "05:30 PM", TVEKAppLocalization.of(context)!.eveningPrayerAndIntercession, TVEKAppLocalization.of(context)!.stGregoriosShrineKalachandaJn),
      PrayerTimingItem(TVEKAppLocalization.of(context)!.everySecondSunday, "03:30 PM", TVEKAppLocalization.of(context)!.prakashamPrathanaSamagamam, TVEKAppLocalization.of(context)!.church),
      PrayerTimingItem(TVEKAppLocalization.of(context)!.everyFourthSunday, "05:45 AM", TVEKAppLocalization.of(context)!.eveningPrayerAndIntercession, TVEKAppLocalization.of(context)!.stGeorgeShrineKGMSSJnSPampady)
    ];

    saintsList = [
      UserProfileItem(TVEKAppLocalization.of(context)!.saintMaryorVirginMary, TVEKAppLocalization.of(context)!.saintMarySubtitle, "images/holy_mary.jpeg",TVEKAppLocalization.of(context)!.saintMaryDescription),
      UserProfileItem(TVEKAppLocalization.of(context)!.saintThomas, TVEKAppLocalization.of(context)!.saintThomasSubtitle, "images/st_thomas.jpeg",TVEKAppLocalization.of(context)!.saintThomasDescription),
      UserProfileItem(TVEKAppLocalization.of(context)!.gheevargheseSahadha, TVEKAppLocalization.of(context)!.gheevargheseSahadhaSubtitle, "images/gheevarghese_sahada.jpeg",TVEKAppLocalization.of(context)!.gheevargheseSahadhaDescription),
      UserProfileItem(TVEKAppLocalization.of(context)!.parumalaThirumeni, TVEKAppLocalization.of(context)!.parumalaThirumeniSubtitle, "images/parumala_thirumeni.jpeg",TVEKAppLocalization.of(context)!.parumalaThirumeniDescription),
      UserProfileItem(TVEKAppLocalization.of(context)!.vattasserilThirumeni, TVEKAppLocalization.of(context)!.vattasserilThirumeniSubtitle, "images/geevarghese_mar_divanasyos.jpeg",TVEKAppLocalization.of(context)!.vattasserilThirumeniDescription),
      UserProfileItem(TVEKAppLocalization.of(context)!.pampadyThirumeni, TVEKAppLocalization.of(context)!.pampadyThirumeniSubtitle, "images/pampady_thirumeni.jpeg",TVEKAppLocalization.of(context)!.pampadyThirumeniDescription),
    ];
  }

  List<HomeMenuItem>? menuList;
  List<HomeMenuItem>? footerLinkList;
  List<PrayerTimingItem>? prayerTimingList;
  List<UserProfileItem>? saintsList;
  static const String contactNumber = "04812505528";
}

class HomeMenuItem{
  String text = "";
  IconData icon = Icons.title;
  String transitionLink = "";
  HomeMenuItem(String text, IconData icon, String transitionLink) {
    this.text = text;
    this.icon = icon;
    this.transitionLink = transitionLink;
  }
}

class PrayerTimingItem{
  String day = "";
  String time = "";
  String service = "";
  String venue = "";
  PrayerTimingItem(String day, String time, String service, String venue) {
    this.day = day;
    this.time = time;
    this.service = service;
    this.venue = venue;
  }
}

class UserProfileItem{
  String name = "";
  String title = "";
  String image = "";
  String description = "";
  UserProfileItem(String name, String title, String image, String description) {
    this.name = name;
    this.title = title;
    this.image = image;
    this.description = description;
  }
}