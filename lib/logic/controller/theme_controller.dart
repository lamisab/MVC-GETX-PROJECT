import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class ThemeController {
  final GetStorage boxstorage = GetStorage();
  final Key = 'isDarkModes';

  saveThemeDatatInBox(bool isDark) {
    boxstorage.write(Key, isDark);
  }

  bool getThemeDatatFromBox() {
    return boxstorage.read<bool>(Key) ?? false;
  }

  ThemeMode get ThemeDataGet =>
      getThemeDatatFromBox() ? ThemeMode.dark : ThemeMode.light;

  void changesTheme() {
    Get.changeThemeMode(
        getThemeDatatFromBox() ? ThemeMode.light : ThemeMode.dark);

    saveThemeDatatInBox(!getThemeDatatFromBox());
  }
}
