import 'package:flutter/material.dart';
import 'package:flutter_ui_nice/page/navigation/widgets/background_common.dart';

class NavigationOneCoordinator extends StatefulWidget {
	@override
	_Coordinator createState() => _Coordinator();
}

class _Coordinator extends State<NavigationOneCoordinator> {

	@override
  void initState() {
    super.initState();
  }

	@override
  Widget build(BuildContext context) => BackgroundCommon(
		child: Stack(
			children: <Widget>[

			],
		),
	);

	@override
	void dispose() {
		super.dispose();
	}
}