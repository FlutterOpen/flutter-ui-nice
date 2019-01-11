import 'package:flutter/material.dart';
import 'package:flutter_ui_nice/const/color_const.dart';

class HomePage extends StatelessWidget {
	HomePage(this.onMenuPressed);
	final VoidCallback onMenuPressed;

	@override
  Widget build(BuildContext context) {
    return Container(
			decoration: BoxDecoration(
				borderRadius: BorderRadius.circular(10.0),
				gradient: LinearGradient(
					begin: Alignment.topLeft,
					end: Alignment.bottomRight,
					colors: [YELLOW, GREEN, BLUE],
				),
				boxShadow: <BoxShadow>[
					BoxShadow(
						color: Colors.black26,
						offset: Offset(2.0, 1.0),
						blurRadius: 10.0,
					)
				],
			),
			child: Center(
				child: RaisedButton(onPressed: onMenuPressed, child: Text("Open Menu"),),
			),
		);
  }
}