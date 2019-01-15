import 'package:flutter/material.dart';
import 'package:flutter_ui_nice/const/color_const.dart';
import 'package:flutter_ui_nice/const/gradient_const.dart';
import 'package:flutter_ui_nice/const/images_const.dart';
import 'package:flutter_ui_nice/const/size_const.dart';
import 'package:flutter_ui_nice/const/string_const.dart';
import 'dart:io';

import 'package:flutter_ui_nice/page/signup/widgets/signup_arrow_button.dart';
import '../../const/icons.dart';

class SignPageThree extends StatefulWidget {
  @override
  _SignPageThreeState createState() => _SignPageThreeState();
}

class _SignPageThreeState extends State<SignPageThree> {
  TextEditingController _username = TextEditingController();
  TextEditingController _password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final _media = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: SIGNUP_BACKGROUND,
        ),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Stack(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 60,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Center(
                      child: Image.asset(
                        SignUpImagePath.SignUpLogo,
                        height: _media.height / 7,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 8.0),
                      child: Row(
                        children: <Widget>[
                          Container(
                            height: _media.height / 1.7,
                            width: _media.width / 1.25,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(15),
                                  bottomRight: Radius.circular(15)),
                              gradient: LinearGradient(
                                  begin: FractionalOffset(0.0, 0.4),
                                  end: FractionalOffset(0.9, 0.7),
                                  // Add one stop for each color. Stops should increase from 0 to 1
                                  stops: [
                                    0.2,
                                    0.9
                                  ],
                                  colors: [
                                    Color(0xffFFC3A0),
                                    Color(0xffFFAFBD),
                                  ]),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black12,
                                  blurRadius: 15,
                                  spreadRadius: 8,
                                ),
                              ],
                            ),
                            child: Padding(
                              padding: EdgeInsets.only(left: 30, top: 60),
                              child: new Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    'Log in\nto continue.',
                                    style: TextStyle(
                                        fontFamily: "Montserrat",
                                        fontWeight: FontWeight.w500,
                                        fontSize: 32),
                                  ),
                                  SizedBox(
                                    height: 40,
                                  ),
                                  Container(
                                      margin: EdgeInsets.only(bottom: 16.0),
                                      child: inputText(
                                          "Email", _username, false, true)),
                                  inputText("Password", _password, true, false),
                                ],
                              ),
                            ),
                          ),
                          Flexible(
                            child: Opacity(
                              opacity: 0.6,
                              child: new Container(
                                height: _media.height / 1.7 - 20,
                                width: 25,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(15),
                                      bottomRight: Radius.circular(15)),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black12,
                                      blurRadius: 15,
                                      spreadRadius: 8,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Flexible(
                            child: Opacity(
                              opacity: 0.3,
                              child: new Container(
                                height: _media.height / 1.7 - 40,
                                width: 25,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(15),
                                      bottomRight: Radius.circular(15)),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black12,
                                      blurRadius: 15,
                                      spreadRadius: 8,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Flexible(
                            child: Opacity(
                              opacity: 0.1,
                              child: new Container(
                                height: _media.height / 1.7 - 60,
                                width: 25,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(15),
                                      bottomRight: Radius.circular(15)),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black12,
                                      blurRadius: 15,
                                      spreadRadius: 8,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 60),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            StringConst.SIGN_UP_TEXT,
                            style: TextStyle(color: MAIN_COLOR),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          GestureDetector(
                            onTap: () => print("Sign Up Tapped"),
                            child: Text(StringConst.SIGN_UP),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    )
                  ],
                ),
              ),
              Positioned(
                  top: _media.height / 1.7 + _media.height / 7 + 30,
                  left: 20,
                  child: SignUpArrowButton(
                    icon: IconData(arrow_right, fontFamily: 'Icons'),
                    iconSize: 8,
                    onTap: () => print("Signup Tapped"),
                  )),
              Positioned(
                top: _media.height / 1.7 + _media.height / 7 - 10,
                left: 30,
                child: Text(
                  'NEXT',
                  style: TextStyle(
                      fontFamily: "Montserrat",
                      fontWeight: FontWeight.w800,
                      fontSize: 16),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget inputText(String hintText, TextEditingController controller,
    bool obSecure, bool border) {
  return TextField(
    style: TextStyle(color: Color(0xff353535), fontWeight: FontWeight.bold),
    controller: controller,
    decoration: new InputDecoration(
        suffixIcon: obSecure
            ? null
            : Padding(
                padding: const EdgeInsets.only(right: 32.0),
                child: Icon(IconData(0xe902, fontFamily: 'Icons'),
                    color: Color(0xff35AA90), size: 10.0),
              ),
        border: border ? UnderlineInputBorder() : InputBorder.none,
        hintText: hintText,
        hintStyle: TextStyle(
            color: Color(0xff353535),
            fontFamily: "Montserrat",
            fontWeight: FontWeight.bold,
            fontSize: 16.0)),
    obscureText: obSecure,
  );
}
