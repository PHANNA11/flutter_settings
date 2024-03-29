import 'package:flutte_settings/screen/view/controller/themContrller.dart';
import 'package:flutte_settings/screen/view/fonts/controller/fonts_controller.dart';
import 'package:flutte_settings/screen/view/home_page.dart';
import 'package:flutte_settings/screen/view/language/controller/translation_controller.dart';
import 'package:flutte_settings/screen/view/language/model/language_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

TraslateLanguege traslateLanguege = Get.put(TraslateLanguege());
void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final themeController = Get.put(ThemeController());
    return SimpleBuilder(builder: (context) {
      return GetMaterialApp(
        translations: LanguageModel(),
        locale: traslateLanguege.english.value
            ? const Locale('en', 'US')
            : const Locale('KH', 'KH'),
        theme: themeController.theme,
        onInit: () async {
          FontController fontController = Get.put(FontController());
          fontController.onInitFont();
          traslateLanguege.initlanguege();
        },
        home: HomePage(),
      );
    });
  }
}
