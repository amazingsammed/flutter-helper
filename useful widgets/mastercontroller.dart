import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:kstu/tesxt.dart';

import '../ads/banner.dart';

class MasterController extends GetxController {
  var tabIndex = 0.obs;
  var startup = false.obs;
  @override
  onInit() {
    startTime();
    super.onInit();
  }

  void changeTabindex(int index) {
    FocusManager.instance.primaryFocus!.unfocus();
    tabIndex.value = index;
  }

  startTime() async {
    var duration = Duration(seconds: 4);
    return Timer(duration, navigationPage);
  }

  void navigationPage() {
    Get.offAll(() => Master());
  }
}

class HomeController extends GetxController {
  var shufflequestionvalue = false.obs;
  var initialQuestionValue = '30'.obs;

  changeShuffleQuestionvalue(bool value) {
    shufflequestionvalue.value = !shufflequestionvalue.value;
  }

  changeNumofQuestion(String value) {
    initialQuestionValue.value = value;
  }

  final List<String> _numOfQuestionList = [];

  List<String> numOfQuestionList() {
    _numOfQuestionList.clear();
    for (int _x = 1; _x < 40 + 1; _x++) {
      _numOfQuestionList.add('$_x');
    }
    ;
    return _numOfQuestionList;
  }
}
