// ignore_for_file: file_names, avoid_print

import 'package:flutter/widgets.dart';
import 'dart:math';

class ResultData extends ChangeNotifier {
  int? weight = 20;
  double? height = 100;
  double? result;

  int get bmiResult {
    return result!.toInt();
  }

  void addWeight() {
    weight = weight! + 1;
    notifyListeners();
  }

  void removeWeight() {
    if (weight! <= 1) {
      print('we can not --');
    } else {
      weight = weight! - 1;
      notifyListeners();
    }
  }

  void functionResult() {
    result = (weight! / pow(2, (height!.toInt() / 100)));
    notifyListeners();
  }
}
