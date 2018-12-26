import 'package:flutter/material.dart';
import 'package:flutter_ui_nice/const/gradient_const.dart';

class SignUpArrowButton extends StatelessWidget {
  final IconData icon;
  final Function onTap;
  final double iconSize;
  final double height;
  final double width;

  SignUpArrowButton(
      {this.icon,
      this.iconSize,
      this.onTap,
      this.height = 50.0,
      this.width = 50.0});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          gradient: SIGNUP_CIRCLE_BUTTON_BACKGROUND,
        ),
        child: Icon(
          icon,
          size: iconSize,
          color: Colors.white,
        ),
      ),
    );
  }
}
