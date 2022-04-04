import 'package:app/tvek_flutter_core/localization/tvek_app_localization.dart';
import 'package:app/ui/widgets/language_button_widget.dart';
import 'package:app/ui/widgets/menu_drawer_widget.dart';
import 'package:flutter/material.dart';

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
        child: Icon(Icons.add),
      ),
      body: body,
    );
  }
}
