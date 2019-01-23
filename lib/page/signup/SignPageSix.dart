import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_ui_nice/const/gradient_const.dart';
import 'package:flutter_ui_nice/const/images_const.dart';
import 'package:flutter_ui_nice/page/signup/widgets/signup_6_box.dart';
import 'package:flutter_ui_nice/page/signup/widgets/signup_arrow_button.dart';
import 'package:flutter_ui_nice/page/signup/widgets/signup_const.dart';

class SignPageSix extends StatefulWidget {
  SignPageSix({Key key}) : super(key: key);
  @override
  _SignPageSixState createState() => _SignPageSixState();
}

class _SignPageSixState extends State<SignPageSix>
    with TickerProviderStateMixin {
  AnimationController _controller1, _controller2, _controller3;
  TextEditingController _username = TextEditingController();
  TextEditingController _password = TextEditingController();
  StreamController<bool> isCreating;
  Duration duration;
  @override
  void initState() {
    super.initState();

    duration = new Duration(milliseconds: 400);

    _controller1 = new AnimationController(vsync: this, duration: duration);
    _controller2 = new AnimationController(
        vsync: this, duration: Duration(milliseconds: 200));
    _controller3 = new AnimationController(
        vsync: this, duration: Duration(microseconds: 0));

    _controller1.forward();

    isCreating = new StreamController.broadcast();
  }

  @override
  void dispose() {
    _controller1.dispose();
    _controller2.dispose();
    _controller3.dispose();
    _username.dispose();
    _password.dispose();
    isCreating.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final _media = MediaQuery.of(context).size;

    List<Widget> stackChildren = [
      AnimatedBuilder(
        animation: _controller1,
        builder: (context, child) {
          double d =
              _controller1.value / 0.6 > 1.0 ? 1.0 : _controller1.value / 0.6;
          return Transform.translate(
            offset: Offset(0.0, 250.0 - 250.0 * d),
            child: Opacity(
              opacity: d,
              child: SignupSixBox(
                boxHeight: 350,
                boxPadding: 198,
                boxGradient: SIGNUP_SIX_GOOGLEP_BG,
                child: Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Text(
                    "GOOGLE PLUS",
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                  ),
                ),
              ),
            ),
          );
        },
      ),
      AnimatedBuilder(
        animation: _controller1,
        builder: (context, child) {
          double d =
              _controller1.value / 0.6 > 1.0 ? 1.0 : _controller1.value / 0.6;
          return Transform.translate(
            offset: Offset(0.0, 250.0 - 250.0 * d),
            child: Opacity(
              opacity: d,
              child: SignupSixBox(
                boxHeight: 275,
                boxPadding: 148,
                boxGradient: SIGNUP_SIX_TWITTER_BG,
                child: Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Text(
                    "TWITTER",
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                  ),
                ),
              ),
            ),
          );
        },
      ),
      AnimatedBuilder(
        animation: _controller1,
        builder: (context, child) {
          double d =
              _controller1.value / 0.6 > 1.0 ? 1.0 : _controller1.value / 0.6;
          return Transform.translate(
            offset: Offset(0.0, 250.0 - 250.0 * d),
            child: Opacity(
              opacity: d,
              child: SignupSixBox(
                boxHeight: 200,
                boxPadding: 98,
                boxGradient: SIGNUP_SIX_FACEBOOK_BG,
                child: Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Text(
                    "FACEBOOK",
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                  ),
                ),
              ),
            ),
          );
        },
      ),
      AnimatedBuilder(
        animation: _controller1,
        builder: (context, child) {
          double d =
              _controller1.value / 0.6 > 1.0 ? 1.0 : _controller1.value / 0.6;
          return Opacity(
            opacity: d,
            child: StreamBuilder(
              builder: (context, snapShot) {
                return !snapShot.data
                    ? AnimatedBuilder(
                        animation: _controller2,
                        builder: (context, child) {
                          return Transform.scale(
                            scale: 1 - _controller2.value,
                            child: GestureDetector(
                              onTap: () {
                                _controller2.forward();
                                _controller3.forward();
                                isCreating.add(true);
                              },
                              child: SignupSixBox(
                                boxHeight: 125,
                                boxPadding: 48,
                                boxGradient: SIGNUP_SIX_SIGNUP_BG,
                                child: Padding(
                                  padding: const EdgeInsets.all(30.0),
                                  child: Text(
                                    "SIGN UP",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                      )
                    : AnimatedBuilder(
                        animation: _controller2,
                        builder: (context, child) {
                          return AnimatedContainer(
                            duration: duration,
                            height: _media.height / 2 + 125,
                            padding: EdgeInsets.only(
                                right: _controller2.value + 47.0),
                            child: GestureDetector(
                              onTap: () {
                                _controller2.reverse();
                                _controller3.reverse();
                                isCreating.add(false);
                              },
                              child: Transform.scale(
                                scale: _controller2.value,
                                child: SignupSixBox(
                                  boxHeight: 10,
                                  boxPadding: 0,
                                  boxGradient: SIGNUP_BACKGROUND,
                                  child: mainLoginStack(),
                                ),
                              ),
                            ),
                          );
                        },
                      );
              },
              stream: isCreating.stream,
              initialData: false,
            ),
          );
        },
      ),
      AnimatedBuilder(
        animation: _controller1,
        builder: (context, child) {
          double d =
              _controller1.value - 0.4 < 0.0 ? 0.0 : _controller1.value - 0.4;
          d = d / 0.6 > 1.0 ? 1.0 : d / 0.6;
          return Opacity(
            opacity: d,
            child: StreamBuilder(
              builder: (context, snapShot) {
                return !snapShot.data
                    ? SignupSixBox(
                        boxHeight: 50,
                        boxPadding: 0,
                        boxGradient: SIGNUP_BACKGROUND,
                        child: mainLoginStack(),
                      )
                    : AnimatedContainer(
                        height: _media.height / 2 + 50,
                        padding: EdgeInsets.only(right: 0.0),
                        duration: duration,
                        child: SignupSixBox(
                          boxHeight: 125,
                          boxPadding: 48 - (48 - _controller2.value),
                          boxGradient: SIGNUP_SIX_SIGNUP_BG,
                          child: Column(
                            children: <Widget>[
                              signupArea(_media),
                            ],
                          ),
                        ),
                      );
              },
              stream: isCreating.stream,
              initialData: false,
            ),
          );
        },
      ),
    ];

    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Stack(
        overflow: Overflow.visible,
        fit: StackFit.expand,
        children: <Widget>[
          buildBackgroundImage(),
          SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Stack(
              overflow: Overflow.visible,
              fit: StackFit.loose,
              children: stackChildren,
            ),
          ),
        ],
      ),
    );
  }

  Padding signupArea(media) {
    return Padding(
      padding: const EdgeInsets.only(top: 60.0, left: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Center(
            child: Image.asset(
              SignUpImagePath.SignUpLogo,
              height: media.height / 7,
            ),
          ),
          Text(
            'Sign in',
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
            width: media.width - 110,
            child: Container(
              color: Colors.black,
            ),
          ),
          passwordTextFieldWidget(),
          Text(
            "",
            style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
          )
        ],
      ),
    );
  }

  Stack mainLoginStack() {
    final _media = MediaQuery.of(context).size;
    return Stack(
      children: <Widget>[
        Padding(
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
        buildSigninArrowButton(),
        AnimatedBuilder(
            animation: _controller3,
            builder: (context, child) {
              return Opacity(
                opacity: _controller3.value,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: Text(
                        "LOGIN",
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.w500),
                      ),
                    ),
                  ],
                ),
              );
            }),
      ],
    );
  }

  Positioned buildSigninArrowButton() {
    return Positioned(
      bottom: 30,
      right: 30,
      child: Opacity(
        opacity: 1,
        child: AnimatedBuilder(
            animation: _controller2,
            builder: (context, child) {
              return Opacity(
                opacity: 1 - _controller2.value,
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
              );
            }),
      ),
    );
  }

  Container buildBackgroundImage() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(SignUpImagePath.SignUpPage_6_Bg),
          fit: BoxFit.contain,
          alignment: Alignment.bottomCenter,
        ),
      ),
    );
  }

  Widget emailTextFieldWidget() {
    return TextField(
      controller: _username,
      decoration: new InputDecoration(
        suffixIcon: Padding(
          padding: const EdgeInsets.only(right: 110.0),
          child: Icon(IconData(0xe902, fontFamily: 'Icons'),
              color: Color(0xff35AA90), size: 10.0),
        ),
        hintText: 'Email',
        labelStyle: TextStyle(
          fontWeight: FontWeight.w700,
          fontSize: 14,
        ),
        hintStyle: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.bold,
        ),
        border: InputBorder.none,
      ),
    );
  }

  Widget passwordTextFieldWidget() {
    return TextField(
      controller: _password,
      decoration: new InputDecoration(
        hintText: 'Password',
        labelStyle: TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 14,
        ),
        hintStyle: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.bold,
        ),
        border: InputBorder.none,
      ),
      obscureText: true,
    );
  }
}
