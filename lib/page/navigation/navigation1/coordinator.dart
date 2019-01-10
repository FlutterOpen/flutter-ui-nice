import 'package:flutter/material.dart';
import 'package:flutter_ui_nice/page/navigation/navigation1/widgets/main_page.dart';

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
  Widget build(BuildContext context) => MainPage();

	@override
	void dispose() {
		super.dispose();
	}
}