import 'package:app/tvek_flutter_core/localization/tvek_app_localization.dart';
import 'package:app/tvek_flutter_core/localization/tvek_scaffold.dart';
import 'package:app/tvek_flutter_core/localization/tvek_section.dart';
import 'package:flutter/material.dart';
import 'package:maps_launcher/maps_launcher.dart';

class RouteMapView extends StatelessWidget {
  const RouteMapView({Key? key}) : super(key: key);

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
            children: <Widget>[
              TVEKSection(
                  title: TVEKAppLocalization.of(context)!.routeMap,
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
                            TVEKSection(
                                title: TVEKAppLocalization.of(context)!.address,
                                body: Text(
                                  TVEKAppLocalization.of(context)!.cathedralAddress,
                                  textAlign: TextAlign.center,
                                ),
                                headerStyle: Theme.of(context).textTheme.headline5
                            ),
                            TVEKSection(
                                title: TVEKAppLocalization.of(context)!.map,
                                body: GestureDetector(
                                  onTap: (){
                                    MapsLauncher.launchQuery("St. Johns Orthodox Cathedral Pampady");
                                  },
                                  child: Image(image: AssetImage("images/google_map.jpg"),),
                                ),//TVEKIFrameView(url:"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d7868.685859698192!2d76.6256327697754!3d9.565677900000003!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3b062df1214b0203%3A0xfc6115040785f50b!2sSt.%20Johns%20Orthodox%20Cathedral%20Pampady!5e0!3m2!1sen!2sjp!4v1653151466124!5m2!1sen!2sjp"),
                                headerStyle: Theme.of(context).textTheme.headline5
                            )
                          ])), headerStyle: Theme.of(context).textTheme.headline3,
              ),

            ],
          ),
        ) // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
