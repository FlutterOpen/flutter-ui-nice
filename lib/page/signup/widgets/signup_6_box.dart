import 'package:flutter/material.dart';

class SignupSixBox extends StatefulWidget {
  final double boxHeight;
  final double boxWidth;
  final double boxPadding;
  final LinearGradient boxGradient;
  final Widget child;

  SignupSixBox(
      {Key key,
      this.boxHeight,
      this.boxWidth,
      this.boxPadding,
      this.boxGradient,
      this.child})
      : super(key: key);
  @override
  _SignupSixBoxState createState() => _SignupSixBoxState();
}

class _SignupSixBoxState extends State<SignupSixBox> {
  @override
  Widget build(BuildContext context) {
    final _media = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.only(right: widget.boxPadding),
      child: AnimatedContainer(
        duration: Duration(milliseconds: 400),
        alignment: Alignment.bottomLeft,
        height: (_media.height / 2) + widget.boxHeight,
        width: _media.width,
        decoration: BoxDecoration(
          gradient: widget.boxGradient,
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(15),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 20,
              spreadRadius: 0,
              offset: Offset(0, 10),
            ),
          ],
        ),
        child: widget.child,
      ),
    );
  }
}
