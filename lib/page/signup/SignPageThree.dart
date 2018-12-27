import 'package:flutter/material.dart';
import 'package:flutter_ui_nice/const/color_const.dart';
import 'package:flutter_ui_nice/const/gradient_const.dart';
import 'package:flutter_ui_nice/const/images_const.dart';
import 'package:flutter_ui_nice/const/size_const.dart';
import 'package:flutter_ui_nice/const/string_const.dart';
import 'dart:io';

import 'package:flutter_ui_nice/page/signup/widgets/signup_arrow_button.dart';

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
                    Center(child: Image.asset(
                      SignUpImagePath.SignUpLogo,
                      height: _media.height/7,
                    ),),
                    Row(
                      children: <Widget>[
                        Container(
                          height: _media.height/1.7,
                          width: _media.width/1.25,

                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(topRight: Radius.circular(15),bottomRight: Radius.circular(15)),
                            gradient: SIGNUP_CARD_BACKGROUND,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black12,
                                blurRadius: 15,
                                spreadRadius: 8,
                              ),
                            ],

                          ),
                          child: Padding(
                            padding: EdgeInsets.only(left: 40,top: 60),
                            child: new Column(
                              crossAxisAlignment: CrossAxisAlignment.start,

                              children: <Widget>[
                                Text(
                                  'Log in',
                                  style: TextStyle(
                                      fontFamily: "Montserrat",
                                      fontWeight: FontWeight.w300,
                                      fontSize: 40),
                                ),
                                Text(
                                  'to continue..',
                                  style: TextStyle(
                                      fontFamily: "Montserrat",
                                      fontWeight: FontWeight.w300,
                                      fontSize: 40),
                                ),
                                SizedBox(height: 40,),
                                inputText("Username",
                                    _username, false),
                                Divider(
                                  height: 5,
                                  color: Colors.black,
                                ),
                                inputText(
                                    "Password",  _password, true),





                              ],
                            ),
                          ),

                        ),
                        Flexible(
                          child: Opacity(
                            opacity: 0.6,
                            child: new Container(
                              height: _media.height/1.7-20,
                              width: 25,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(topRight: Radius.circular(15),bottomRight: Radius.circular(15)),
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
                            opacity: 0.4,
                            child: new Container(
                              height: _media.height/1.7-40,
                              width: 25,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(topRight: Radius.circular(15),bottomRight: Radius.circular(15)),
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
                            opacity: 0.2,
                            child: new Container(
                              height: _media.height/1.7-60,
                              width: 25,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(topRight: Radius.circular(15),bottomRight: Radius.circular(15)),
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
                            child: Text(  StringConst.SIGN_UP),
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

                  top:  _media.height/1.7+_media.height/7+30,
                  left: 20,
                  child: SignUpArrowButton(
                    icon: Icons.arrow_forward,
                    iconSize: 26,
                    onTap: () => print("Signup Tapped"),
                  )

              ),
              Positioned(

                top:  _media.height/1.7+_media.height/7-10,
                left: 40,
                child:  Text(
                  'Next',
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

Widget inputText(

    String hintText,
    TextEditingController controller,
    bool obSecure,
    ) {
  return TextField(
    style: TextStyle(height: 1.3),
    controller: controller,
    decoration: InputDecoration(
      hintText: hintText,

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
