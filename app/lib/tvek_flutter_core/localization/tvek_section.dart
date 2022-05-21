import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TVEKSection extends StatelessWidget {
  const TVEKSection({Key? key, required this.title, required this.body, required this.headerStyle}) : super(key: key);

  final String title;
  final Widget body;
  final headerStyle;

  @override
  Widget build(BuildContext context) {
    return Center(
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
        children: [SizedBox(
            width: 960,
            child: Container(
              child: Card(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children:[ListTile(
                      title: Padding(
                          padding: const EdgeInsets.only(bottom: 24.0),
                          child: Center(child: Container(
                              padding: EdgeInsets.all(16),
                              child: Text(
                                title, style: headerStyle,
                              )
                          ))),
                      subtitle: Container(
                          child: Padding(
                              padding: const EdgeInsets.only(bottom: 24.0),
                              child: body
                          )
                      ),
                    )]),
              ),
            ))],
      ),
    );
  }
}
