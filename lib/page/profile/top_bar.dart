///
/// Created by Terrance Duong on 2019/01/03
/// Github: https://github.com/dndoanh
/// Email: dndoanh@gmail.com
///
import "package:flutter/material.dart";
import 'profile_const.dart';
import 'package:flutter_ui_nice/const/color_const.dart';
import 'package:flutter_ui_nice/util/SizeUtil.dart';

class TopBar extends StatelessWidget {
  TopBar(
      {this.leftIcon,
      this.rightIcon,
      this.title,
      this.onLeftIconPressed,
      this.onRightIconPressed});

  final String leftIcon;
  final String rightIcon;
  final String title;
  final Function() onLeftIconPressed;
  final Function() onRightIconPressed;

  @override
  Widget build(BuildContext context) {
    final icons = <Widget>[];
    if (leftIcon != null) {
      icons.add(InkWell(
        onTap: onLeftIconPressed,
        child: Image.asset(leftIcon,
            width: SizeUtil.getAxisY(CIRCLE_BUTTON_HEIGHT),
            height: SizeUtil.getAxisY(CIRCLE_BUTTON_HEIGHT)),
      ));
    }
    if (rightIcon != null) {
      icons.add(InkWell(
        onTap: onRightIconPressed,
        child: Image.asset(rightIcon,
            width: SizeUtil.getAxisY(CIRCLE_BUTTON_HEIGHT),
            height: SizeUtil.getAxisY(CIRCLE_BUTTON_HEIGHT)),
      ));
    }

    return Container(
      constraints:
          BoxConstraints.expand(height: SizeUtil.getAxisY(TOP_BAR_HEIGHT)),
      child: Stack(
        children: <Widget>[
          Container(
            constraints: BoxConstraints.expand(
                height: SizeUtil.getAxisY(TOP_BAR_GRADIENT_HEIGHT)),
            decoration:
                BoxDecoration(gradient: LinearGradient(colors: [YELLOW, BLUE])),
          ),
          Center(
            child: Padding(
              padding: EdgeInsets.only(top: SizeUtil.getAxisY(30.0)),
              child: Text(
                this.title.toUpperCase(),
                style: TextStyle(
                    color: TEXT_BLACK,
                    fontSize: SizeUtil.getAxisBoth(TEXT_SIZE_L),
                    fontWeight: FontWeight.w700),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: SizeUtil.getAxisX(24.0)),
            alignment: AlignmentDirectional.bottomStart,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: icons),
          )
        ],
      ),
    );
  }
}
