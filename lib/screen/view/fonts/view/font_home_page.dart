import 'package:flutte_settings/screen/view/fonts/controller/fonts_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class FontHomePage extends StatelessWidget {
  FontHomePage({super.key});
  FontController controller = Get.put(FontController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Obx(
        () => Text(
          'Fonts',
          style: TextStyle(fontFamily: controller.selectFont.value.toString()),
        ),
      )),
      body: GetBuilder<FontController>(
          init: controller,
          builder: (context) {
            return ListView.builder(
              itemCount: controller.googleFontsList.length,
              itemBuilder: (context, index) {
                return Card(
                    elevation: 0,
                    child: ListTile(
                      onTap: () {
                        controller.onSelectFont(
                            fontName: controller.googleFontsList[index]);
                      },
                      title: Text(
                        controller.googleFontsList[index],
                        style: TextStyle(
                            fontFamily: controller.googleFontsList[index]),
                      ),
                      trailing: controller.selectFont.value ==
                              controller.googleFontsList[index]
                          ? const CircleAvatar(
                              maxRadius: 12,
                              child: Icon(
                                Icons.done,
                                size: 20,
                              ))
                          : null,
                    ));
              },
            );
          }),
    );
  }
}
