import 'package:flutter/material.dart';
import 'package:flutter_ui_nice/const/color_const.dart';

class Button {

	static Widget home(VoidCallback onPressed) => _buildButton(onPressed, "HOME", Icons.home);

	static Widget chat(VoidCallback onPressed, {int notification})  => _buildButton(onPressed, "CHAT", Icons.chat, notification:
	notification);

	static Widget feed(VoidCallback onPressed) => _buildButton(onPressed, "FEED", Icons.rss_feed);

	static Widget profile(VoidCallback onPressed) => _buildButton(onPressed, "PROFILE", Icons.person);

	static Widget settings(VoidCallback onPressed) => _buildButton(onPressed, "SETTINGS", Icons.settings);

	static Widget _buildButton(VoidCallback onPressed, String title, IconData icon, {int notification}) {
		if (notification != null) {
			return Container(
				child: Stack(
					children: <Widget>[
						_button(onPressed, title, icon),
						Positioned(
							top: 0.0,
						  right: 0.0,
						  child: Container(
						  	decoration: BoxDecoration(
						  		shape: BoxShape.circle,
						  		color: Colors.redAccent
						  	),
						  	child: Padding(
						  	  padding: const EdgeInsets.all(6.0),
						  	  child: Text("$notification", style: TextStyle(color: Colors.white),),
						  	),
						  ),
						),
					],
				),
			);
		} else {
			return _button(onPressed, title, icon);
		}
	}

	static Widget _button(VoidCallback onPressed, String title, IconData icon) => RaisedButton(
		color: GREEN,
		shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
		onPressed: onPressed,
		child: Padding(
		  padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 10.0),
		  child: Row(
		  	mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
	);

}