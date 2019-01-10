import 'package:flutter/material.dart';
import 'package:flutter_ui_nice/const/color_const.dart';

class Button {

	static Widget home() => _buildButton("HOME", Icons.home);

	static Widget chat({int notification})  => _buildButton("CHAT", Icons.chat, notification: notification);

	static Widget feed() => _buildButton("FEED", Icons.rss_feed);

	static Widget profile() => _buildButton("PROFILE", Icons.person);

	static Widget settings() => _buildButton("SETTINGS", Icons.settings);

	static Widget _buildButton(String title, IconData icon, {int notification}) {
		if (notification != null) {
			return Container(
				child: Stack(
					children: <Widget>[
						Container(
							decoration: BoxDecoration(
								borderRadius: BorderRadius.circular(50.0),
								color: RED
							),
						),
						_button(title, icon)
					],
				),
			);
		} else {
			return _button(title, icon);
		}
	}

	static Widget _button(String title, IconData icon) => Container(
		height: 50.0,
		width: 180.0,
		decoration: BoxDecoration(
				borderRadius: BorderRadius.circular(20.0),
				color: GREEN
		),
		child: InkResponse(
			onTap: () => debugPrint('Pressed'),
			splashColor: BLUE_LIGHT,
			borderRadius: BorderRadius.circular(100.0),
			child: Center(
				child: Row(
					mainAxisAlignment: MainAxisAlignment.center,
					children: <Widget>[
						Text(
							title,
							style: TextStyle(
								fontSize: 18.0,
								color: TEXT_BLACK,
							),
						),
						SizedBox(width: 5.0,),
						Icon(icon)
					],
				),
			),
		),
	);
}