///
/// Created by Yasinilhan on 18-12-24
/// Email: yasinilhan61@gmail.com
///
import 'package:flutter/material.dart';
import 'package:flutter_ui_nice/const/color_const.dart';
import 'package:flutter_ui_nice/const/gradient_const.dart';
import 'package:flutter_ui_nice/const/images_const.dart';
import 'package:flutter_ui_nice/const/size_const.dart';
import 'package:flutter_ui_nice/const/string_const.dart';
import 'package:flutter_ui_nice/page/signup/widgets/signup_arrow_button.dart';

class SignPageFour extends StatefulWidget {
  @override
  _SignPageFourState createState() => _SignPageFourState();
}

class _SignPageFourState extends State<SignPageFour> {
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
              Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 60.0, horizontal: 40),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Center(
                          child: Image.asset(
                            SignUpImagePath.SignUpLogo,
                            height: _media.height / 7,
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          "WELCOME BACK!",
                          style: TextStyle(
                            letterSpacing: 4,
                            fontFamily: "Montserrat",
                            fontWeight: FontWeight.bold,
                            fontSize: TEXT_LARGE_SIZE,
                          ),
                        ),
                        SizedBox(height: 30),
                        Text(
                          'Log in',
                          style: TextStyle(
                              fontFamily: "Montserrat",
                              fontWeight: FontWeight.w200,
                              fontSize: 40),
                        ),
                        Text(
                          'to continue.',
                          style: TextStyle(
                              fontFamily: "Montserrat",
                              fontWeight: FontWeight.w200,
                              fontSize: 40),
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        Container(
                          height: _media.height / 3.8,
                          decoration: BoxDecoration(
                            gradient: SIGNUP_CARD_BACKGROUND,
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black12,
                                blurRadius: 15,
                                spreadRadius: 8,
                              ),
                            ],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(30.0),
                            child: Column(
                              children: <Widget>[
                                Expanded(
                                  child: inputText("USERNAME",
                                      'hristov123@gmail.com', _username, false),
                                ),
                                Divider(
                                  height: 5,
                                  color: Colors.black,
                                ),
                                Expanded(
                                    child: inputText(
                                        "PASSWORD", '******', _password, true)),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
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
                  SizedBox(
                    height: 50,
                  )
                ],
              ),
              Positioned(
                bottom: _media.height / 6.3,
                right: 15,
                child: SignUpArrowButton(
                  icon: IconData(0xe901, fontFamily: 'Icons'),
                  iconSize: 9,
                  onTap: () => print("Signup Tapped"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget inputText(
    String fieldName,
    String hintText,
    TextEditingController controller,
    bool obSecure,
  ) {
    return TextField(
      style: TextStyle(height: 1.3),
      controller: controller,
      decoration: InputDecoration(
        hintText: hintText,
        labelText: fieldName,
        labelStyle: TextStyle(
          fontSize: TEXT_NORMAL_SIZE,
          fontFamily: "Montserrat",
          fontWeight: FontWeight.w400,
          letterSpacing: 1,
          height: 0,
        ),
        border: InputBorder.none,
      ),
      obscureText: obSecure,
    );
  }
}
