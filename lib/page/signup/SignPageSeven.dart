import 'package:flutter/material.dart';
import 'package:flutter_ui_nice/const/gradient_const.dart';

class SignPageSeven extends StatefulWidget {
  @override
  _SignPageSevenState createState() => _SignPageSevenState();
}

class _SignPageSevenState extends State<SignPageSeven> {
  @override
  Widget build(BuildContext context) {
    final _media = MediaQuery.of(context).size;
    final _toolbarSize = MediaQuery.of(context).padding;
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Container(
          padding: MediaQuery.of(context).padding,
          height: _media.height,
          width: _media.width,
          decoration: BoxDecoration(
            gradient: SIGNUP_BACKGROUND,
          ),
          child: Stack(
            alignment: Alignment.center,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Container(
                    height: _media.height,
                    width: _media.width / 2,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [
                            Colors.black.withOpacity(0.05),
                            Colors.transparent,
                          ],
                          begin: FractionalOffset.topCenter,
                          end: FractionalOffset.bottomCenter,
                          stops: [0.2, 0.8]),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 25.0),
                      child: Opacity(
                        opacity: 0.5,
                        child: Text(
                          "Log In",
                          style: TextStyle(
                            fontSize: 30,
                            color: Colors.black54,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: _media.height,
                    width: _media.width / 2,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 25.0),
                      child: Opacity(
                        opacity: 1,
                        child: Text(
                          "Sign Up",
                          style: TextStyle(
                            fontSize: 30,
                            color: Colors.black54,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.only(
                  top: 110,
                  left: 50,
                  right: 50,
                  bottom: 100,
                ),
                height: _media.height,
                width: _media.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.red,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
