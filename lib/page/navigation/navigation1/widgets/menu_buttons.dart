import 'package:flutter/material.dart';
import 'package:flutter_ui_nice/page/navigation/navigation1/widgets/button.dart';

class MenuButtons extends StatelessWidget {
	MenuButtons({this.onHomePressed, this.onChatPressed, this.onFeedPressed, this.onProfilePressed, this
			.onSettingsPressed});
	final VoidCallback onHomePressed;
	final VoidCallback onChatPressed;
	final VoidCallback onFeedPressed;
	final VoidCallback onProfilePressed;
	final VoidCallback onSettingsPressed;

	List<Widget> _allButtons({int notifications}) => [
		Padding(
		  padding: const EdgeInsets.only(left: 10.0, right: 30.0, bottom: 20.0),
		  child: Button.home(onHomePressed),
		),
		Padding(
		  padding: const EdgeInsets.only(left: 50.0, bottom: 20.0),
		  child: Button.chat(onChatPressed, notification: notifications),
		),
		Padding(
		  padding: const EdgeInsets.only(left: 8.0, bottom: 20.0),
		  child: Button.feed(onFeedPressed),
		),
		Padding(
		  padding: const EdgeInsets.only(left: 50.0, bottom: 20.0),
		  child: Button.profile(onProfilePressed),
		),
		Button.settings(onSettingsPressed)
	];

	@override
  Widget build(BuildContext context) {
    return Container(
			child: Column(
				children: _allButtons(notifications: 5),
			),
		);
  }
}