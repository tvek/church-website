import 'package:app/tvek_flutter_core/localization/tvek_api.dart';
import 'package:flutter/material.dart';
import 'package:app/ui/widgets/main_app.dart';

void main() async {
  await TVEKAPI.init();
  runApp(MainApp());
}

