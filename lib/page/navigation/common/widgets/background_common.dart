import 'package:flutter/material.dart';
import 'package:flutter_ui_nice/const/color_const.dart';

class BackgroundCommon extends StatelessWidget {

	BackgroundCommon({this.child, Key key}) : super(key: key);
	final Widget child;

	@override
  Widget build(BuildContext context) => Container(
      decoration: BoxDecoration(
					gradient: LinearGradient(
						begin: Alignment.topLeft,
						end: Alignment.bottomRight,
						colors: [YELLOW, GREEN, BLUE],
					)
			),
			child: child
	);
}
