import 'package:flutter/material.dart';
import 'package:flutter_ui_nice/const/color_const.dart';

const LinearGradient SIGNUP_SIX_GOOGLEP_BG = LinearGradient(
  begin: FractionalOffset.centerLeft,
  end: FractionalOffset.centerRight,
  stops: [0.2, 0.8],
  colors: [
    SIGNUP_LIGHT_RED,
    Color(0xFFf194a2),
  ],
);

const LinearGradient SIGNUP_SIX_TWITTER_BG = LinearGradient(
  begin: FractionalOffset.centerLeft,
  end: FractionalOffset.centerRight,
  // Add one stop for each color. Stops should increase from 0 to 1
  stops: [0.2, 0.6],
  colors: [
    Color(0xFFc2e9fb),
    Color(0xFFa1c4fd),
  ],
);

const LinearGradient SIGNUP_SIX_FACEBOOK_BG = LinearGradient(
  begin: FractionalOffset.bottomLeft,
  end: FractionalOffset.topRight,
  // Add one stop for each color. Stops should increase from 0 to 1
  stops: [0.1, 0.3],
  colors: [
    Color(0xffe0c3fc),
    Color(0xff8ec5fc),
  ],
);
const LinearGradient SIGNUP_SIX_SIGNUP_BG = LinearGradient(
  begin: FractionalOffset.centerLeft,
  end: FractionalOffset.centerRight,
  stops: [0.1, 0.8],
  colors: [YELLOW, BLUE],
);
