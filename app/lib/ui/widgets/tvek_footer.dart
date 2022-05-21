import 'package:app/tvek_flutter_core/localization/tvek_api.dart';
import 'package:app/tvek_flutter_core/localization/tvek_app_localization.dart';
import 'package:app/ui/widgets/app_constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:footer/footer.dart';
import 'package:format/format.dart';
import 'package:intl/intl.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

class TVEKFooterView extends StatelessWidget {
  const TVEKFooterView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var currentYear = DateFormat('yyyy').format((DateTime.now()));
    var appConstants = AppConstants();
    appConstants.of(context);
    List<Widget> footerLinkItemList = appConstants.footerLinkList!.map((menuItem) => TextButton.icon(
      icon: Icon(Icons.arrow_forward_ios_rounded), label:Text(menuItem.text),
      onPressed: () => TVEKAPI.navigateToDestination(context, menuItem.transitionLink),
    )).toList();
    var firstFooterLinkList = footerLinkItemList.getRange(0, 4).toList();
    var secondFooterLinkList = footerLinkItemList.getRange(4, 8).toList();
    var lastFooterLinkList = footerLinkItemList.getRange(8, 12).toList();
    return new Footer(
      child: new Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children:<Widget>[
            new Center(
              child:new Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: firstFooterLinkList),
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: secondFooterLinkList),
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: lastFooterLinkList),
                ],
              ),
            ),
            Divider(),
            Text(TVEKAppLocalization.of(context)!.copyright.format(currentYear),style: TextStyle(fontWeight:FontWeight.w300, fontSize: 12.0, color: Color(0xFF162A49)),),
            Text(TVEKAppLocalization.of(context)!.poweredBy,style: TextStyle(fontWeight:FontWeight.w300, fontSize: 12.0,color: Color(0xFF162A49)),),
          ]
      ),
      padding: EdgeInsets.all(5.0),

    );
  }
}
