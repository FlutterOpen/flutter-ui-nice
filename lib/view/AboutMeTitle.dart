///
/// Created by NieBin on 18-12-17
/// Github: https://github.com/nb312
/// Email: niebin312@gmail.com
///
import "package:flutter/material.dart";
import 'package:flutter_ui_nice/const/string_const.dart';
import 'package:flutter_ui_nice/const/color_const.dart';
import 'package:flutter_ui_nice/const/images_const.dart';

class AboutMeTitle extends AboutListTile {
  AboutMeTitle()
      : super(
            icon: Image.asset(
              MainImagePath.image_app,
              width: 40.0,
              height: 40.0,
            ),
            applicationName: StringConst.APP_NAME,
            applicationVersion: "1.0",
            applicationLegalese: "MIT License 2.0",
            aboutBoxChildren: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 4.0),
                child: Text(
                  StringConst.CREATE_BY,
                  style: TextStyle(color: TEXT_BLACK_LIGHT),
                ),
              )
            ]);
}
