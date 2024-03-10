import 'package:flutte_settings/screen/view/controller/themContrller.dart';
import 'package:flutte_settings/screen/view/fonts/controller/fonts_controller.dart';
import 'package:flutte_settings/screen/view/fonts/view/font_home_page.dart';
import 'package:flutte_settings/screen/view/language/view/language_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class HomePage extends StatelessWidget {
  HomePage({super.key});
  FontController controller = Get.put(FontController());
  ThemeController themeController = Get.put(ThemeController());
  @override
  Widget build(BuildContext context) {
    return GetBuilder<FontController>(builder: (context) {
      return Scaffold(
        appBar: AppBar(
          title: Text(
            'setting'.tr,
            style: TextStyle(fontFamily: controller.selectFont.value),
          ),
        ),
        body: Column(
          children: [
            ListTile(
              leading: const Icon(Icons.dark_mode),
              title: Text(
                'Dark Mode',
                style: TextStyle(fontFamily: controller.selectFont.value),
              ),
              trailing: SimpleBuilder(builder: (context) {
                return CupertinoSwitch(
                  value: themeController.isDark,
                  onChanged: (value) {
                    themeController.changeTheme(value);
                  },
                );
              }),
            ),
            const Divider(
              thickness: 1,
            ),
            ListTile(
              onTap: () {
                Get.to(() => const LanguageScreen());
              },
              leading: const Icon(Icons.language),
              title: Text(
                'languages'.tr,
                style: TextStyle(fontFamily: controller.selectFont.value),
              ),
              trailing: const Icon(Icons.arrow_forward_ios),
            ),
            const Divider(
              thickness: 1,
            ),
            ListTile(
              onTap: () {
                Get.to(() => FontHomePage());
              },
              leading: const Icon(Icons.font_download),
              title: Text(
                'Fonts'.tr,
                style: TextStyle(fontFamily: controller.selectFont.value),
              ),
              trailing: const Icon(Icons.arrow_forward_ios),
            ),
            const Divider(
              thickness: 1,
            )
          ],
        ),
      );
    });
  }
}
