import 'package:flutter/material.dart';
import 'package:flutter_ui_nice/const/color_const.dart';
import 'package:flutter_ui_nice/const/gradient_const.dart';
import 'package:flutter_ui_nice/const/images_const.dart';
import 'package:flutter_ui_nice/const/size_const.dart';
import 'package:flutter_ui_nice/const/styles.dart';
import 'package:flutter_ui_nice/page/signup/widgets/signup_arrow_button.dart';

class SignPageSix extends StatefulWidget {
  @override
  _SignPageSixState createState() => _SignPageSixState();
}

class _SignPageSixState extends State<SignPageSix> {
  @override
  Widget build(BuildContext context) {
    final _media = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(SignUpImagePath.SignUpPage_6_Bg),
                fit: BoxFit.contain,
                alignment: Alignment.bottomCenter,
              ),
            ),
          ),
          Stack(
            overflow: Overflow.visible,
            fit: StackFit.loose,
            children: <Widget>[
              colorContainer(
                "GOOGLE PLUS",
                LinearGradient(
                  begin: FractionalOffset.centerLeft,
                  end: FractionalOffset.centerRight,
                  // Add one stop for each color. Stops should increase from 0 to 1
                  stops: [0.2, 0.8],
                  colors: [
                    LIGHT_RED,
                    Color(0xFFf194a2),
                  ],
                ),
                _media.height,
                _media.width / 2,
                () => debugPrint("Google Plus Clicked"),
              ),
              colorContainer(
                "TWITTER",
                LinearGradient(
                  begin: FractionalOffset.centerLeft,
                  end: FractionalOffset.centerRight,
                  // Add one stop for each color. Stops should increase from 0 to 1
                  stops: [0.2, 0.6],
                  colors: [
                    Color(0xFFc2e9fb),
                    Color(0xFFa1c4fd),
                  ],
                ),
                _media.height / 2 + 270,
                _media.width / 2 - 50,
                () => debugPrint("Twitter Clicked"),
              ),
              colorContainer(
                "FACEBOOK",
                LinearGradient(
                  begin: FractionalOffset.bottomLeft,
                  end: FractionalOffset.topRight,
                  // Add one stop for each color. Stops should increase from 0 to 1
                  stops: [0.1, 0.3],
                  colors: [
                    Color(0xffe0c3fc),
                    Color(0xff8ec5fc),
                  ],
                ),
                _media.height / 2 + 195,
                58.0,
                () => debugPrint("Facebook Clicked"),
              ),
              colorContainer(
                "SIGN UP",
                LinearGradient(
                  begin: FractionalOffset.centerLeft,
                  end: FractionalOffset.centerRight,
                  // Add one stop for each color. Stops should increase from 0 to 1
                  stops: [0.4, 1],
                  colors: [
                    YELLOW,
                    BLUE,
                  ],
                ),
                _media.height / 2 + 120,
                28,
                () => debugPrint("Sign Up Clicked"),
              ),
              Stack(
                children: <Widget>[
                  Container(
                    height: _media.height / 2 + 50,
                    decoration: BoxDecoration(
                      gradient: SIGNUP_BACKGROUND,
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(15),
                      ),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black12,
                            blurRadius: 20,
                            spreadRadius: 0,
                            offset: Offset(_media.width / 2, 16.0)),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 60.0, left: 30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Center(
                            child: Image.asset(
                              SignUpImagePath.SignUpLogo,
                              height: _media.height / 7,
                            ),
                          ),
                          Text(
                            'Log in',
                            style: TextStyle(
                                fontFamily: "Montserrat",
                                fontWeight: FontWeight.w200,
                                fontSize: 35),
                          ),
                          Text(
                            'to continue.',
                            style: TextStyle(
                                fontFamily: "Montserrat",
                                fontWeight: FontWeight.w200,
                                fontSize: 35),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          emailTextFieldWidget(),
                          SizedBox(
                            height: 1.5,
                            width: _media.width - 110,
                            child: Container(
                              color: Colors.black,
                            ),
                          ),
                          passwordTextFieldWidget(),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 30,
                    right: 30,
                    child: SignUpArrowButton(
                      onTap: () => print("Login pressed"),
                      iconSize: 7,
                      height: 40,
                      width: 40,
                      icon: IconData(
                        0xe901,
                        fontFamily: 'Icons',
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget emailTextFieldWidget() {
    return Container(
      child: TextField(
        decoration: new InputDecoration(
          suffixIcon: Padding(
            padding: const EdgeInsets.only(right: 110.0),
            child: Icon(IconData(0xe902, fontFamily: 'Icons'),
                color: Color(0xff35AA90), size: 10.0),
          ),
          hintText: 'Email',
          hintStyle: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w600,
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }

  Widget passwordTextFieldWidget() {
    return Container(
      child: TextField(
        decoration: new InputDecoration(
          hintText: 'Password',
          hintStyle: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w600,
          ),
          border: InputBorder.none,
        ),
        obscureText: true,
      ),
    );
  }

  Widget colorContainer(
    String title,
    LinearGradient gradient,
    double height,
    double rightPadding,
    VoidCallback onTap,
  ) {
    final width = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.only(right: rightPadding),
      child: InkResponse(
        splashColor: Colors.red,
        highlightColor: Colors.red,
        highlightShape: BoxShape.circle,
        onTap: onTap,
        child: Container(
          alignment: Alignment.bottomLeft,
          height: height,
          width: width,
          decoration: BoxDecoration(
            gradient: gradient,
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(15),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 20,
                spreadRadius: 0,
                offset: Offset(width / 2, 16.0),
              ),
            ],
          ),
          child: Padding(
            padding: EdgeInsets.all(27),
            child: Text(
              title,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 12,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
