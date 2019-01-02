import 'package:flutter/material.dart';
import '../../const/gradient_const.dart';
import '../../const/color_const.dart';
import '../../const/icons.dart';
import '../../const/styles.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class SignPageNine extends StatefulWidget {
  @override
  State<StatefulWidget> createState()  => SignPageNineState();
}

class SignPageNineState extends State<SignPageNine> {
  File _image;

  Future getImage() async {
    File image = await ImagePicker.pickImage(source: ImageSource.camera);

    setState(() {
      _image = image;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: MyAppBar(),
      body: Container(
        decoration: BoxDecoration(
          gradient: SIGNUP_BACKGROUND
        ),
        child: Align(
          alignment: Alignment.topCenter,
          child: Stack(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 80.0, left: 48.0, right: 48.0, bottom: 48.0),
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
                        ])
                ),
                child: Container(
                  margin: EdgeInsets.only(top: 180.0, left: 24.0, right: 24.0),
                  child: ListView(
                    shrinkWrap: true,
                    children: <Widget>[
                      textField('NAME', false),
                      textField('MAIL', false),
                      textField('MAIL', true),
                      Padding(
                        padding: const EdgeInsets.only(top: 36.0),
                        child: Text('1/2',
                        style: TextStyle(
                          letterSpacing: 8.0,
                          fontWeight: FontWeight.bold
                        )),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 32.0, right: 72.0, top: 56.0),
                child: Stack(
                  alignment: Alignment.topRight,
                  children: <Widget>[
                    Container(
                      width: 400.0,
                      height: 182.0,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black12,
                              blurRadius: 15,
                              spreadRadius: 0,
                              offset: Offset(0.0, 16.0)),
                        ],
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(16.0),
                        child: _image != null ? Image.file(_image, fit: BoxFit.fitWidth,) : Image.asset(
                          'assets/images/signup/signup_page_9_profile.png',
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    IconButton(
                      onPressed: () async {
                        await getImage();
                      },
                      icon: Icon(
                        IconData(
                            camera,
                            fontFamily: 'Icons'
                        ),
                        color: Color(0xffDBEDAF),
                      ),
                    )
                  ],
                ),
              ),
              Positioned(
                bottom: 16.0,
                right: 18.9,
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 36.0, vertical: 16.0),
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black12,
                              blurRadius: 15,
                              spreadRadius: 0,
                              offset: Offset(0.0, 32.0)),
                        ],
                        borderRadius: new BorderRadius.circular(36.0),
                        gradient: LinearGradient(begin: FractionalOffset.centerLeft,
// Add one stop for each color. Stops should increase from 0 to 1
                            stops: [
                              0.2,
                              1
                            ], colors: [
                              Color(0xff000000),
                              Color(0xff434343),
                            ])),
                    child: Text(
                      'NEXT',
                      style: TextStyle(
                          color: Color(0xffF1EA94),
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Montserrat'),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {

    final double statusbarHeight = MediaQuery
        .of(context)
        .padding
        .top;
    // TODO: implement build
    return Container(
      padding: EdgeInsets.only(top: statusbarHeight),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: FractionalOffset(0.5, 0.0), end: FractionalOffset(0.6, 0.8),
          // Add one stop for each color. Stops should increase from 0 to 1
          stops: [0.0, 0.9], colors: [YELLOW, BLUE],
        )
      ),
      child: NavigationToolbar(
        leading: Stack(
          alignment: Alignment(0, 4.0),
          children: <Widget>[
            InkWell(
              onTap: (){
                Navigator.maybePop(context);
              },
              child: Container(
                height: 48.0,
                width: 48.0,
                margin: EdgeInsets.only(left: 8.0),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black12,
                          blurRadius: 15,
                          spreadRadius: 0,
                          offset: Offset(0.0, 16.0)),
                    ],
                    gradient: LinearGradient(begin: FractionalOffset.centerLeft,
// Add one stop for each color. Stops should increase from 0 to 1
                        stops: [
                          0.2,
                          1
                        ], colors: [
                          Color(0xff000000),
                          Color(0xff434343),
                        ]),
                ),
                child: Icon(
                  IconData(
                      arrow_left,
                    fontFamily: 'Icons'
                  ),
                  size: 10,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
        centerMiddle: true,
        middle: Text("SIGN UP",
        style: TextStyle(
          fontWeight: FontWeight.bold
        ),),
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
  
}

TextField textField(String labelText, bool obscureText){
  return TextField(
    style: hintAndValueStyle,
    obscureText: obscureText,
    decoration: new InputDecoration(
        labelText: labelText,
        labelStyle: TextStyle(
            color: Color(0xff353535),
            fontWeight: FontWeight.normal,
            fontSize: 18.0
        )
    ),
  );
}