import 'package:flutter/material.dart';

class GenderPicker extends StatefulWidget {
  @override
  _GenderPickerState createState() => _GenderPickerState();
}

class _GenderPickerState extends State<GenderPicker> {
  bool _isFemale = false;

  _selectGender(bool isFemale) {
    setState(() {
      _isFemale = isFemale;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 16.0, right: 32.0),
      padding: EdgeInsets.symmetric(horizontal: 32.0, vertical: 24.0),
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                color: Colors.black12,
                blurRadius: 15,
                spreadRadius: 0,
                offset: Offset(0.0, 16.0)),
          ],
          borderRadius: new BorderRadius.circular(12.0),
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
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            'GENDER',
            style: TextStyle(letterSpacing: 2.0, fontFamily: 'Montserrat'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(right: 16.0),
                child: InkWell(
                  onTap: () => _selectGender(false),
                  child: Opacity(
                    opacity: _isFemale ? 0.5 : 1,
                    child: Text(
                      'Male',
                      style: TextStyle(
                          letterSpacing: 3.0,
                          color: Color(0xff353535),
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Montserrat'),
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () => _selectGender(true),
                child: Opacity(
                  opacity: _isFemale ? 1 : 0.5,
                  child: Text(
                    'Female',
                    style: TextStyle(
                        letterSpacing: 3.0,
                        color: Color(0xff353535),
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Montserrat'),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
