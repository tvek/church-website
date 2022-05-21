import 'package:app/tvek_flutter_core/localization/tvek_scaffold.dart';
import 'package:flutter/material.dart';

class TVEKPage extends StatelessWidget {
  const TVEKPage({Key? key, required this.body}) : super(key: key);

  final List<Widget> body;

  @override
  Widget build(BuildContext context) {
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
            children: body,
          ),
        ) // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}