import 'package:flutter/widgets.dart';

class HomePageAnimator {
	HomePageAnimator(this.controller) :
			translateLeft = Tween(begin: 0.0, end: -200.0).animate(controller),
			scaleDown = Tween(begin: 1.0, end: 0.8).animate(controller);

	final AnimationController controller;
	final Animation<double> translateLeft;
	final Animation<double> scaleDown;
}