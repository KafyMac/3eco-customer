import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class DropdownController extends GetxController {
  String? selectedValue;

  var language = <String>['English', 'Espanol'];

  void onSelected(String value) {
    selectedValue = value;

    update();

    // ignore: avoid_print
    print(selectedValue);
    changeLanguage(selectedValue);
  }

  changeLanguage(String? selectedLanguage) {
    switch (selectedLanguage) {
      case 'English':
        Get.updateLocale(Locale('en_US'));
        // ignore: avoid_print
        print('Changed to En');
        break;
      case 'Espanol':
        Get.updateLocale(Locale('en_US'));
        // ignore: avoid_print
        print('Changed to Es');
        break;
      default:
        Get.updateLocale(Locale('en_US'));
        // ignore: avoid_print
        print('Fallback to En');
        break;
    }
  }
}
