import 'package:flutte_settings/screen/view/fonts/controller/fonts_controller.dart';
import 'package:flutte_settings/screen/view/home_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/route_manager.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      onInit: () async {
        FontController fontController = Get.put(FontController());
        fontController.onInitFont();
      },
      home: HomePage(),
    );
  }
}
