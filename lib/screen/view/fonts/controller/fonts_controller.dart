import 'package:get/get.dart';

class FontController extends GetxController {
  RxString selectFont = 'KhmerOS_battambang'.obs;
  RxList<String> googleFontsList = [
    'AmaticSC-Regular',
    'Cookie-Regular',
    'KhmerOS_battambang',
    'Sacramento-Regular',
  ].obs;
  void onSelectFont({required String fontName}) {
    selectFont(fontName);
    update();
  }
}
