import 'package:flutter/material.dart';
import 'package:flutter_ui_nice/page/signup/widgets/signup_apbar.dart';
import '../../const/gradient_const.dart';
import '../../const/styles.dart';
import 'widgets/signup_profile_image_picker.dart';
import 'widgets/signup_button.dart';

class SignPageNine extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double statusbarHeight = MediaQuery.of(context).padding.top;

    // TODO: implement build
    return Scaffold(
      appBar: SignupApbar(
        title: "Sign Up",
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Container(
          height: MediaQuery.of(context).size.height -
              kToolbarHeight -
              statusbarHeight,
          decoration: BoxDecoration(gradient: SIGNUP_BACKGROUND),
          child: Align(
            alignment: Alignment.topCenter,
            child: Stack(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(
                      top: 80.0, left: 48.0, right: 48.0, bottom: 48.0),
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black12,
                            blurRadius: 15,
                            spreadRadius: 0,
                            offset: Offset(0.0, 32.0)),
                      ],
                      borderRadius: BorderRadius.circular(16.0),
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
                          ])),
                  child: Container(
                    margin: EdgeInsets.only(
                        top: 180.0, left: 24.0, right: 24.0, bottom: 16.0),
                    child: ListView(
                      shrinkWrap: true,
                      children: <Widget>[
                        textField('NAME', false),
                        textField('MAIL', false),
                        textField('PASSWORD', true),
                        Padding(
                          padding: const EdgeInsets.only(top: 36.0),
                          child: Text('1/2',
                              style: TextStyle(
                                  letterSpacing: 8.0,
                                  fontWeight: FontWeight.bold)),
                        )
                      ],
                    ),
                  ),
                ),
                ProfileImagePicker(
                    margin:
                        EdgeInsets.only(left: 32.0, right: 72.0, top: 56.0)),
                Positioned(
                  bottom: 16.0,
                  right: 18.9,
                  child: signupButton('NEXT'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

TextField textField(String labelText, bool obscureText) {
  return TextField(
    style: hintAndValueStyle,
    obscureText: obscureText,
    decoration: new InputDecoration(
        labelText: labelText,
        labelStyle: TextStyle(
            color: Color(0xff353535),
            fontWeight: FontWeight.normal,
            fontSize: 18.0)),
  );
}
