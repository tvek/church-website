import 'package:app/tvek_flutter_core/localization/tvek_app_localization.dart';
import 'package:app/tvek_flutter_core/localization/tvek_section.dart';
import 'package:app/ui/widgets/app_constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PrayerTimingView extends StatelessWidget {
  const PrayerTimingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var appConstants = AppConstants();
    appConstants.of(context);
    var prayerTableRowList = appConstants.prayerTimingList!;
    var prayerTableRows = prayerTableRowList.map(
            (menuItem) => populateRow(menuItem.day, menuItem.time, menuItem.service, menuItem.venue)
    ).toList();
    return TVEKSection(
        title: TVEKAppLocalization.of(context)!.prayerTimings,
        body: DataTable( rows: prayerTableRows,
        columns: [
          DataColumn(label: populateHeaderColumn("Day")),
          DataColumn(label: populateHeaderColumn("Time")),
          DataColumn(label: populateHeaderColumn("Service")),
          DataColumn(label: populateHeaderColumn("Venue")),
        ],
        ), headerStyle: Theme.of(context).textTheme.headline3,
    );
  }

  DataRow populateRow(String day, String time, String service, String venue){
    return DataRow( cells: [
      DataCell(getPaddedText(day)),
      DataCell(getPaddedText(time)),
      DataCell(getPaddedText(service)),
      DataCell(getPaddedText(venue))
    ]);
  }

  Text populateHeaderColumn(String text){
    return Text(text, style: TextStyle(fontWeight: FontWeight.bold));
  }

  Widget getPaddedText(String text) {
    return Container(
        margin: EdgeInsets.all(8),
        child:Text(text, textAlign: TextAlign.left,)
    );
  }
}
