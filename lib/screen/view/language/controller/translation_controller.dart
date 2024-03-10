import 'dart:developer';

import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:shared_preferences/shared_preferences.dart';

class TraslateLanguege extends GetxController {
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    initlanguege();
  }

  RxBool english = true.obs;

  Future initlanguege() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    english.value = prefs.getBool('english') ?? english.value;

    log('localInit:$english');
    update();
    // return english.value;
  }

  switchLanguege(RxBool eng) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    english = eng;
    await prefs.setBool('english', eng.value);
    english.value = prefs.getBool('english')!;
    log('localSwitch:$english');
    update();
  }
}
