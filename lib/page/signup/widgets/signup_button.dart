import 'package:flutter/material.dart';

Widget signupButton(title) {
  return InkWell(
    onTap: () {},
    child: Container(
      padding: EdgeInsets.symmetric(horizontal: 48.0, vertical: 18.0),
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                color: Colors.black12,
                blurRadius: 15,
                spreadRadius: 0,
                offset: Offset(0.0, 32.0)),
          ],
          borderRadius: new BorderRadius.circular(36.0),
          gradient: LinearGradient(begin: FractionalOffset.centerLeft,
// Add one stop for each color. Stops should increase from 0 to 1
              stops: [
                0.2,
                1
              ], colors: [
            Color(0xff000000),
            Color(0xff434343),
          ])),
      child: Text(
        title,
        style: TextStyle(
            color: Color(0xffF1EA94),
            fontWeight: FontWeight.bold,
            fontFamily: 'Montserrat'),
      ),
    ),
  );
}
