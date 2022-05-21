import 'dart:html';

import 'package:app/tvek_flutter_core/localization/tvek_app_localization.dart';
import 'package:app/ui/widgets/language_button_widget.dart';
import 'package:app/ui/widgets/menu_drawer_widget.dart';
import 'package:app/ui/widgets/tvek_footer.dart';
import 'package:flutter/material.dart';
import 'package:format/format.dart';
import 'package:url_launcher/url_launcher_string.dart';

import '../../ui/widgets/app_constants.dart';

class TVEKScaffoldWidget extends StatelessWidget {
  const TVEKScaffoldWidget({Key? key, required this.body}) : super(key: key);

  final Widget body;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      // Here we take the value from the MyHomePage object that was created by
      // the App.build method, and use it to set our appbar title.
      title: Text(TVEKAppLocalization.of(context)!.siteName),
      actions: [
      LanguageButtonWidget()
      ],
      ),
      drawer: MenuDrawerWidget(),
      floatingActionButton: FloatingActionButton(
        onPressed: () => {},
        tooltip: 'Increment',
        child: IconButton(
          icon: new Icon(Icons.call,size: 20.0,),
          color: Color(0xFF162A49),
          onPressed: () => launchUrlString("tel://{}".format(AppConstants.contactNumber)),
        ),
      ),
      body: SingleChildScrollView(child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                body,
                TVEKFooterView()
              ])
      ),
      ),
    );
  }
}
