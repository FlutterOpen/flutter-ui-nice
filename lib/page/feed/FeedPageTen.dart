///
/// Created by NieBin on 2018/12/26
/// Github: https://github.com/nb312
/// Email: niebin312@gmail.com
///
import "package:flutter/material.dart";
import 'top_title.dart';
import 'package:flutter_ui_nice/const/color_const.dart';
import 'package:flutter_ui_nice/util/SizeUtil.dart';
import 'feed_const.dart';

class FeedPageTen extends StatefulWidget {
  @override
  _FeedState createState() => _FeedState();
}

class _FeedState extends State<FeedPageTen> {
  Widget _redBackground() => Container(
        alignment: AlignmentDirectional.topStart,
        constraints: BoxConstraints.expand(
            height: SizeUtil.getAxisY(1043.0), width: SizeUtil.getAxisX(630.0)),
        margin: EdgeInsets.only(
          top: SizeUtil.getAxisY(82.0),
        ),
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [RED_LIGHT, RED]),
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(SizeUtil.getAxisBoth(22.0)),
            bottomLeft: Radius.circular(SizeUtil.getAxisBoth(22.0)),
            bottomRight: Radius.circular(SizeUtil.getAxisBoth(22.0)),
          ),
        ),
      );

  Widget _imageGroup() => Container(
        constraints: BoxConstraints.expand(
            height: SizeUtil.getAxisY(495.0), width: SizeUtil.getAxisX(685.0)),
        margin: EdgeInsets.only(top: SizeUtil.getAxisY(43.0)),
        child: Row(
          children: <Widget>[
            Container(
              constraints:
                  BoxConstraints.expand(width: SizeUtil.getAxisX(442.0)),
              child: Image.asset(
                FeedImage.shop_river,
                fit: BoxFit.fill,
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: Image.asset(
                      FeedImage.white_back,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Image.asset(
                      FeedImage.city,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      );

  Widget _header() => Padding(
        padding: EdgeInsets.only(left: SizeUtil.getAxisX(26.0)),
        child: Container(
          width: SizeUtil.getAxisBoth(CIRCLE_BUTTON_HEIGHT),
          height: SizeUtil.getAxisBoth(CIRCLE_BUTTON_HEIGHT),
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage(FeedImage.white_back)),
            borderRadius: BorderRadius.circular(
              SizeUtil.getAxisBoth(22.0),
            ),
          ),
        ),
      );

  Widget _postDesc() => Container(
        padding: EdgeInsets.only(
            left: SizeUtil.getAxisX(60.0),
            right: SizeUtil.getAxisX(152.0),
            top: SizeUtil.getAxisY(51.0)),
        child: RichText(
          text: TextSpan(
            children: [
              TextSpan(
                  text: "Hristo ",
                  style: TextStyle(fontWeight: FontWeight.w700)),
              TextSpan(
                  text:
                      "added 127 new photos to the Lorem Ipsum dolr sit amet.")
            ],
            style: TextStyle(
              color: TEXT_BLACK_LIGHT,
              fontSize: SizeUtil.getAxisBoth(TEXT_NORMAL_SIZE),
            ),
          ),
        ),
      );

  Widget _timeDesc() => Container(
        padding: EdgeInsets.only(right: SizeUtil.getAxisX(159.0)),
        alignment: AlignmentDirectional.centerEnd,
        child: Text(
          "1 MINUTE",
          style: TextStyle(
              color: TEXT_BLACK_LIGHT,
              fontSize: SizeUtil.getAxisBoth(TEXT_SMALL_SIZE)),
        ),
      );

  Widget _contentView() => Container(
        padding: EdgeInsets.only(top: SizeUtil.getAxisY(41.0)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            _header(),
            _timeDesc(),
            _postDesc(),
            _imageGroup(),
            Container(
              alignment: AlignmentDirectional.topStart,
              margin: EdgeInsets.only(
                  top: SizeUtil.getAxisY(81.0),
                  left: SizeUtil.getAxisX(60.0),
                  right: SizeUtil.getAxisX(200.0)),
              child: Text(
                "LOREM IPSUM",
                style: TextStyle(
                    color: TEXT_BLACK_LIGHT,
                    fontSize: SizeUtil.getAxisBoth(TEXT_LARGE_SIZE),
                    fontWeight: FontWeight.w700),
              ),
            ),
            Container(
              alignment: AlignmentDirectional.topStart,
              margin: EdgeInsets.only(
                  top: SizeUtil.getAxisY(29.0),
                  left: SizeUtil.getAxisX(60.0),
                  right: SizeUtil.getAxisX(200.0)),
              child: Text(
                "Cras quis nulla com, aliquam lectus sed, blandit augue. Duis tincidunt urna non pretium",
                style: TextStyle(
                  color: TEXT_BLACK_LIGHT,
                  fontSize: SizeUtil.getAxisBoth(TEXT_NORMAL_SIZE),
                ),
              ),
            )
          ],
        ),
      );

  Widget _body() => Stack(
        children: <Widget>[
          _redBackground(),
          _contentView(),
        ],
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [YELLOW, GREEN]),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            TopTitleBar(),
            _body(),
          ],
        ),
      ),
    );
  }
}
