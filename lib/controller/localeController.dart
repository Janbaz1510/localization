import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../utils/app_string.dart';

class LocaleController extends GetxController {
  String selectedLanguageText = 'English';
  var hotels = <Map<String, String>>[].obs;

  @override
  void onInit() {
    super.onInit();
    _loadHotels();
  }

  void _loadHotels() {
    Future.delayed(Duration.zero, () {
      hotels.assignAll([
        {"title": AppString.T.title, "description": AppString.T.subtitle},
        {"title": AppString.T.title1, "description": AppString.T.subtitle1},
      ]);
    });
  }

  void onChanged(String lan) {
    Locale newLocale;
    switch (lan) {
      case 'en':
        newLocale = const Locale("en", "US");
        selectedLanguageText = 'English';
        break;
      case 'hi':
        newLocale = const Locale("hi", "IN");
        selectedLanguageText = 'Hindi';
        break;
      case 'bn':
        newLocale = const Locale("bn", "BN");
        selectedLanguageText = 'Bengali';
        break;
      default:
        newLocale = const Locale("en", "US");
        selectedLanguageText = 'English';
        break;
    }
    Get.updateLocale(newLocale);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _loadHotels(); // Refresh localized data
    });
  }
}
