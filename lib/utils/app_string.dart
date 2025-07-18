import 'package:get/get.dart';
import 'package:localization/l10n/app_localizations.dart';

class AppString {
  static AppLocalizations get T => AppLocalizations.of(Get.context!)!;
}
