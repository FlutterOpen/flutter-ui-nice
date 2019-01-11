import 'package:flutter/material.dart';
import 'package:flutter_ui_nice/page/navigation/navigation1/widgets/menu_buttons.dart';
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

  _onHomePressed() {
		debugPrint("Home Pressed");
	}

	_onChatPressed() {
		debugPrint("Chat Pressed");
	}

	_onFeedPressed() {
		debugPrint("Feed Pressed");
	}

	_onProfilePressed() {
		debugPrint("Profile Pressed");
	}

	_onSettingsPressed() {
		debugPrint("settings Pressed");
	}

	@override
  Widget build(BuildContext context) => Material(
		child: BackgroundCommon(
			child: Stack(
				children: <Widget>[
					Positioned(
						bottom: 100.0,
						right: 50.0,
						child: MenuButtons(
							onChatPressed: _onChatPressed,
							onFeedPressed: _onFeedPressed,
							onHomePressed: _onHomePressed,
							onProfilePressed: _onProfilePressed,
							onSettingsPressed: _onSettingsPressed,
						),
					)
				],
			),
		),
	);

	@override
	void dispose() {
		super.dispose();
	}
}