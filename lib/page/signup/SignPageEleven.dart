import 'package:flutter/material.dart';
import 'package:flutter_ui_nice/const/color_const.dart';
import 'package:flutter_ui_nice/const/gradient_const.dart';
import 'package:flutter_ui_nice/const/images_const.dart';
import 'package:flutter_ui_nice/const/size_const.dart';
import 'package:flutter_ui_nice/page/signup/widgets/signup_apbar.dart';
import 'package:flutter_ui_nice/page/signup/widgets/signup_arrow_button.dart';

class SignPageEleven extends StatefulWidget {
  _SignPageElevenState createState() => _SignPageElevenState();
}

class _SignPageElevenState extends State<SignPageEleven> {
  @override
  Widget build(BuildContext context) {
    final _media = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Stack(
          children: <Widget>[
            Container(
              height: _media.height,
              width: _media.width,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    SignUpImagePath.SignUpPage_11_Bg,
                  ),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Column(
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    SignupApbar(
                      title: "CREATE ACCOUNT",
                    )
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                SignUpArrowButton(
                  height: 70,
                  width: 70,
                  icon: Icons.add,
                  iconSize: 30,
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  "Upload Profile Picture",
                  style: TextStyle(
                    fontSize: 13,
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                colorBox(SIGNUP_BACKGROUND, "BIRTHDAY", "29 Oct 1982", ""),
                shadowColorBox(
                    SIGNUP_CARD_BACKGROUND, "GENDER", "Male", "Famale"),
                Wrap(children: <Widget>[
                  colorBox(
                      SIGNUP_BACKGROUND, "LOCATION", "Frankfurt am Main", ""),
                ]),
                colorBox(SIGNUP_BACKGROUND, "USERNAME", "hitatal123", ""),
                SizedBox(
                  height: 30,
                ),
                nexButton("NEXT"),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget shadowColorBox(
      Gradient gradient, String title, String data, String gender) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 30.0,
        right: 30,
        bottom: 8,
      ),
      child: Container(
        height: 60,
        decoration: BoxDecoration(
          gradient: gradient,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.black38,
              blurRadius: 30,
              offset: Offset(1.0, 9.0),
            ),
          ],
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              width: 30,
            ),
            Expanded(
              flex: 3,
              child: Text(
                title,
                style: TextStyle(fontSize: TEXT_SMALL_SIZE, color: Colors.grey),
              ),
            ),
            Expanded(
              flex: 2,
              child: Wrap(
                children: <Widget>[
                  Text(
                    data,
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    gender,
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey,
                      fontWeight: FontWeight.w400,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget colorBox(Gradient gradient, String title, String data, String gender) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 30.0,
        right: 30,
        bottom: 8,
      ),
      child: Container(
        height: 60,
        decoration: BoxDecoration(
          gradient: gradient,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              width: 30,
            ),
            Expanded(
              flex: 3,
              child: Text(
                title,
                style: TextStyle(fontSize: TEXT_SMALL_SIZE, color: Colors.grey),
              ),
            ),
            Expanded(
              flex: 2,
              child: Wrap(
                children: <Widget>[
                  Text(
                    data,
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    gender,
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey,
                      fontWeight: FontWeight.w400,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget nexButton(String text) {
    return InkWell(
      child: Container(
        alignment: Alignment.center,
        height: 45,
        width: 120,
        decoration: BoxDecoration(
          gradient: SIGNUP_CIRCLE_BUTTON_BACKGROUND,
          borderRadius: BorderRadius.circular(50),
        ),
        child: Text(
          text,
          style: TextStyle(
            color: YELLOW,
            fontWeight: FontWeight.w700,
            fontSize: TEXT_NORMAL_SIZE,
          ),
        ),
      ),
    );
  }
}
