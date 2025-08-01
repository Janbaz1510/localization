import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:localization/l10n/app_localizations.dart';
import 'package:localization/listdemo.dart' show HotelListScreen;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      theme: ThemeData(colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple)),
      home: HotelListScreen(),
    );
  }
}
