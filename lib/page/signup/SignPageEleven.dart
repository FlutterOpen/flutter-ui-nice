import 'package:flutter/material.dart';
import 'package:flutter_ui_nice/page/signup/widgets/signup_apbar.dart';

class SignPageEleven extends StatefulWidget {
  _SignPageElevenState createState() => _SignPageElevenState();
}

class _SignPageElevenState extends State<SignPageEleven> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(color: Colors.amber),
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
              ],
            ),
          ],
        ),
      ),
    );
  }
}
