///
/// Created by NieBin on 2018/12/26
/// Github: https://github.com/nb312
/// Email: niebin312@gmail.com
///
import "package:flutter/material.dart";
import 'feed_const.dart';
import 'package:flutter_ui_nice/const/color_const.dart';
import 'package:flutter_ui_nice/util/SizeUtil.dart';

class TopTitleBar extends StatelessWidget {
  TopTitleBar(
      {this.leftImage = FeedImage.more_circle,
      this.rightImage = FeedImage.search_circle});

  final String leftImage;
  final String rightImage;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints:
          BoxConstraints.expand(height: SizeUtil.getAxisY(TOP_BAR_HEIGHT)),
      child: Stack(
        children: <Widget>[
          Container(
            constraints: BoxConstraints.expand(
                height: SizeUtil.getAxisY(TOP_BAR_GRADIENT_HEIGHT)),
            decoration:
                BoxDecoration(gradient: LinearGradient(colors: [YELLOW, BLUE])),
          ),
          Center(
            child: Padding(
              padding: EdgeInsets.only(top: SizeUtil.getAxisY(30.0)),
              child: Text(
                FeedStringConst.FEED_NAME,
                style: TextStyle(
                    color: TEXT_BLACK,
                    fontSize: SizeUtil.getAxisBoth(TEXT_NORMAL_2_SIZE),
                    fontWeight: FontWeight.w700),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: SizeUtil.getAxisX(24.0)),
            alignment: AlignmentDirectional.bottomStart,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Image.asset(leftImage,
                      width: SizeUtil.getAxisY(CIRCLE_BUTTON_HEIGHT),
                      height: SizeUtil.getAxisY(CIRCLE_BUTTON_HEIGHT)),
                  Image.asset(rightImage,
                      width: SizeUtil.getAxisY(CIRCLE_BUTTON_HEIGHT),
                      height: SizeUtil.getAxisY(CIRCLE_BUTTON_HEIGHT))
                ]),
          )
        ],
      ),
    );
  }
}
