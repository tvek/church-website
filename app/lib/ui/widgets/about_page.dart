import 'package:app/tvek_flutter_core/localization/tvek_scaffold.dart';
import 'package:flutter/cupertino.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TVEKScaffoldWidget(body:Text("About Us"));
  }
}
