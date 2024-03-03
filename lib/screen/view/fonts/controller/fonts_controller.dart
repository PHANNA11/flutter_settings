import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FontController extends GetxController {
  RxString selectFont = ''.obs;
  void onInitFont() async {
    var prefs = await SharedPreferences.getInstance();
    selectFont(prefs.getString('font') ?? 'KhmerOS_battambang');
    update();
  }

  RxList<String> googleFontsList = [
    'AmaticSC-Regular',
    'Cookie-Regular',
    'KhmerOS_battambang',
    'Sacramento-Regular',
  ].obs;
  void onSelectFont({required String fontName}) async {
    var prefs = await SharedPreferences.getInstance();
    prefs.setString('font', fontName);
    onInitFont();
    update();
  }
}
