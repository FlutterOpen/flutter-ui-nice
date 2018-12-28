///
/// Created by NieBin on 2018/12/28
/// Github: https://github.com/nb312
/// Email: niebin312@gmail.com
///
import "package:flutter/material.dart";
import 'package:flutter_ui_nice/const/color_const.dart';

class GradientUtil {
  static LinearGradient _getLinearGradient(left, right) =>
      LinearGradient(colors: [left, right]);

  static LinearGradient yellowGreen() => _getLinearGradient(YELLOW, GREEN);

  static LinearGradient red() => _getLinearGradient(RED_LIGHT, RED);

  static LinearGradient yellowBlue() => _getLinearGradient(YELLOW, BLUE);

  static LinearGradient blue() => _getLinearGradient(BLUE_LIGHT, BLUE_DEEP);
}
