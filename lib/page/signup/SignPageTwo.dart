///
/// Created by NieBin on 2018/12/25
/// Github: https://github.com/nb312
/// Email: niebin312@gmail.com
///
import "package:flutter/material.dart";
import 'dart:async';

class SignPageTwo extends StatefulWidget {
  @override
  _SignTwoState createState() => _SignTwoState();
}

class _SignTwoState extends State<SignPageTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Home(),
      ),
    );
  }
}

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  HomeState createState() {
    return new HomeState();
  }
}

class HomeState extends State<Home> {
  bool _hasCard;

  @override
  void initState() {
    super.initState();
    _hasCard = false;
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> children = new List();

    children.add(_buildBackground());
    if (_hasCard) children.add(_buildCard());

    return MaterialApp(
      home: Stack(
        children: children,
      ),
    );
  }

  void _showCard() {
    setState(() => _hasCard = true);
  }

  void _hideCard() {
    setState(() => _hasCard = false);
  }

  Widget _buildCard() => new Container(
        child: new Center(
          child: new Container(
            height: 700.0,
            width: 200.0,
            color: Colors.lightBlue,
            child: new Center(
              child: new Text("Card"),
            ),
          ),
        ),
      );

  Widget _buildBackground() => new Scaffold(
        appBar: new AppBar(
          title: new Text("AppBar"),
        ),
        body: new Container(
          child: _hasCard
              ? new FlatButton(
                  onPressed: _hideCard, child: new Text("Hide card"))
              : new FlatButton(
                  onPressed: _showCard, child: new Text("Show card")),
        ),
      );
}

void main() {
  runApp(
    new Home(),
  );
}
