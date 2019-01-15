import 'package:flutter/material.dart';
import 'package:flutter_ui_nice/const/gradient_const.dart';
import 'package:flutter_ui_nice/const/styles.dart';
import 'package:flutter_ui_nice/page/signup/widgets/signup_apbar.dart';

class SignPageTeen extends StatefulWidget {
  @override
  _SignPageTeenState createState() => _SignPageTeenState();
}

class _SignPageTeenState extends State<SignPageTeen>
    with TickerProviderStateMixin {
  int widgetIndex = 0;
  PageController _pageController;

  @override
  void initState() {
    _pageController = PageController(
      initialPage: 0,
      keepPage: true,
    );

    _pageController.addListener(() {
      setState(() {
        widgetIndex = _pageController.page.ceil();
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> widgets = [
      buildFirsPage(context),
      buildFirsPage(context),
      buildFirsPage(context),
    ];

    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: SignupApbar(
        title: "CREATE ACCOUNT",
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        primary: false,
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Stack(
            alignment: Alignment.centerLeft,
            fit: StackFit.loose,
            children: <Widget>[
              Container(
                height: double.infinity,
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: SIGNUP_BACKGROUND,
                ),
              ),
              PageView.builder(
                controller: _pageController,
                itemBuilder: (context, index) {
                  return widgets[index];
                },
                physics: BouncingScrollPhysics(),
                itemCount: widgets.length,
                scrollDirection: Axis.horizontal,
              ),
              buildPositionedDosts(widgets),
            ],
          ),
        ),
      ),
    );
  }

  Container buildFirsPage(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: Column(
        children: <Widget>[
          Expanded(
            child: Container(
              color: Colors.transparent,
            ),
          ),
          Expanded(
            flex: 4,
            child: Container(
              child: Column(
                children: <Widget>[
                  Text(
                    "ACCOUNT",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2,
                      fontFamily: 'Montserrat',
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      height: MediaQuery.of(context).size.height / 2.5,
                      width: MediaQuery.of(context).size.width - 50,
                      decoration: BoxDecoration(
                        color: Color(0xFFfeb9ad),
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 35.0, top: 30, bottom: 35),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Expanded(
                                child:
                                    Container(child: textField("Name", false))),
                            Expanded(
                                child: Container(
                                    child: textField("Email", false))),
                            Expanded(
                                child: Container(
                                    child: textField("Password", true))),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  buildNextButton(),
                  InkWell(
                    onTap: () => print("Term tapped"),
                    child: Text(
                      "General Terms and Conditions",
                      style: TextStyle(
                        color: Colors.grey.shade600,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Padding buildNextButton() {
    return Padding(
      padding: const EdgeInsets.only(bottom: 30.0),
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
    );
  }

  TextField textField(String labelText, bool obscureText) {
    return TextField(
      style: hintAndValueStyle,
      keyboardAppearance: Brightness.light,
      obscureText: obscureText,
      decoration: new InputDecoration(
        labelText: labelText,
        labelStyle: TextStyle(
          color: Color(0xff353535),
          fontWeight: FontWeight.w500,
          fontSize: 12.0,
        ),
      ),
    );
  }

  Positioned buildPositionedDosts(List<Widget> widgets) {
    var _mediaWidth = MediaQuery.of(context).size.width;
    print(_mediaWidth);
    return Positioned(
      left: 50,
      top: 50,
      right: 0,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Row(
            children: <Widget>[
              Flexible(
                flex: 5,
                child: Row(
                  children: <Widget>[
                    Flexible(
                      child: Container(),
                      flex: 1,
                    ),
                    Flexible(
                      child: Padding(
                        padding: _mediaWidth > 400
                            ? EdgeInsets.only(right: 18.0, left: 18)
                            : EdgeInsets.only(right: 8),
                        child: Container(
                          height: 3,
                          color: Color(0xFFffb5b5),
                        ),
                      ),
                      flex: 4,
                    ),
                    Flexible(
                      child: Container(),
                      flex: 2,
                    )
                  ],
                ),
              )
            ],
          ),
          SelectedWidget(
            numberOfDots: widgets.length,
            widgetIndex: widgetIndex,
          ),
        ],
      ),
    );
  }
}

class SelectedWidget extends StatelessWidget {
  final int numberOfDots;
  final int widgetIndex;

  SelectedWidget({this.numberOfDots, this.widgetIndex});

  Widget _inactiveWidget() {
    return Container(
        child: new Padding(
      padding: const EdgeInsets.only(left: 3.0, right: 60.0),
      child: Container(
        height: 10.0,
        width: 10.0,
        decoration: BoxDecoration(
          color: Color(0xFFffb5b5),
          shape: BoxShape.circle,
        ),
      ),
    ));
  }

  Widget _activeWidget() {
    return Container(
      child: Padding(
        padding: EdgeInsets.only(left: 3.0, right: 60.0),
        child: Container(
          height: 30.0,
          width: 30.0,
          decoration: BoxDecoration(
              color: Color(0xFFffb5b5),
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                    color: Colors.black26,
                    blurRadius: 15,
                    spreadRadius: 0,
                    offset: Offset(0, 6)),
              ]),
          child: Padding(
            padding: EdgeInsets.all(12),
            child: Container(
              height: 4,
              width: 4,
              decoration: BoxDecoration(
                color: Colors.black,
                shape: BoxShape.circle,
              ),
            ),
          ),
        ),
      ),
    );
  }

  List<Widget> _buildDots() {
    List<Widget> dots = [];

    for (int i = 0; i < numberOfDots; ++i) {
      dots.add(i == widgetIndex ? _activeWidget() : _inactiveWidget());
    }

    return dots;
  }

  @override
  Widget build(BuildContext context) {
    return new Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: _buildDots(),
      ),
    );
  }
}
