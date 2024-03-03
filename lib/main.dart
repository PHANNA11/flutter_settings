import 'package:flutte_settings/screen/view/home_page.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: HomePage(),
    );
  }
}
