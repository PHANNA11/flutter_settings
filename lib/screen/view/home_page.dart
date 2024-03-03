import 'package:flutte_settings/screen/view/fonts/controller/fonts_controller.dart';
import 'package:flutte_settings/screen/view/fonts/view/font_home_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/route_manager.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  FontController controller = Get.put(FontController());
  @override
  Widget build(BuildContext context) {
    return GetBuilder<FontController>(builder: (context) {
      return Scaffold(
        appBar: AppBar(
          title: Text(
            'Settings',
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
              trailing: CupertinoSwitch(
                value: true,
                onChanged: (value) {},
              ),
            ),
            const Divider(
              thickness: 1,
            ),
            ListTile(
              leading: const Icon(Icons.language),
              title: Text(
                'Language',
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
                'Fonts',
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
