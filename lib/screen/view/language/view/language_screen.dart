import 'package:flutte_settings/main.dart';
import 'package:flutte_settings/screen/view/language/controller/translation_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';

class LanguageScreen extends StatelessWidget {
  const LanguageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('languages'.tr),
      ),
      body: GetBuilder<TraslateLanguege>(
          init: traslateLanguege,
          builder: (context) {
            return ListView(children: [
              cardLanguage(
                isEngIcon: traslateLanguege.english.value ? true : false,
                flagImage: 'assets/icons/circle.png',
                languageName: 'English',
                onTap: () {
                  traslateLanguege.switchLanguege(true.obs);
                  Get.updateLocale(const Locale('en', 'US'));
                },
              ),
              cardLanguage(
                isEngIcon: !traslateLanguege.english.value ? true : false,
                flagImage: 'assets/icons/cambodia.png',
                languageName: 'ភាសាខ្មែរ',
                showLine: false,
                onTap: () {
                  traslateLanguege.switchLanguege(false.obs);
                  Get.updateLocale(const Locale('KH', 'KH'));
                },
              )
            ]);
          }),
    );
  }

  Widget cardLanguage({
    String? flagImage,
    String? languageName,
    bool showLine = true,
    bool isEngIcon = true,
    void Function()? onTap,
  }) {
    return Column(
      children: [
        ListTile(
          onTap: onTap,
          leading: CircleAvatar(
            backgroundColor: Colors.white,
            backgroundImage: AssetImage(flagImage ?? 'assets/icons/circle.png'),
            maxRadius: 22,
          ),
          title: Text(languageName ?? 'English'),
          trailing: isEngIcon ? const Icon(Icons.done) : null,
        ),
        if (showLine)
          const Divider(
            thickness: 2,
            endIndent: 10,
            indent: 10,
          )
      ],
    );
  }
}
