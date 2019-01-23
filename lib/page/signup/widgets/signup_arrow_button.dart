import 'package:flutter/material.dart';

class SignUpArrowButton extends StatelessWidget {
  final IconData icon;
  final Function onTap;
  final double iconSize;
  final double height;
  final double width;
  final Color iconColor;

  SignUpArrowButton({
    this.icon,
    this.iconSize,
    this.onTap,
    this.height = 50.0,
    this.width = 50.0,
    this.iconColor = const Color(0xFFdbedb0),
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
                color: Colors.black12,
                blurRadius: 15,
                spreadRadius: 0,
                offset: Offset(0.0, 16.0)),
          ],
          gradient: LinearGradient(begin: FractionalOffset.centerLeft,
// Add one stop for each color. Stops should increase from 0 to 1
              stops: [
                0.2,
                1
              ], colors: [
            Color(0xff000000),
            Color(0xff434343),
          ]),
        ),
        child: Icon(
          icon,
          size: iconSize,
          color: iconColor,
        ),
      ),
    );
  }
}
