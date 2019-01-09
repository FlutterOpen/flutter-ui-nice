///
/// Created by NieBin on 2018/12/26
/// Github: https://github.com/nb312
/// Email: niebin312@gmail.com
///
import "package:flutter/material.dart";
import 'feed_const.dart';
import 'top_title.dart';
import 'package:flutter_ui_nice/util/SizeUtil.dart';
import 'package:flutter_ui_nice/const/color_const.dart';

class FeedPageTwelve extends StatefulWidget {
  @override
  _FeedState createState() => _FeedState();
}

class _FeedState extends State<FeedPageTwelve> {
  Widget _textBack(content,
          {color = TEXT_BLACK_LIGHT,
          size = TEXT_SMALL_2_SIZE,
          isBold = false}) =>
      Text(
        content,
        style: TextStyle(
            color: color,
            fontSize: SizeUtil.getAxisBoth(size),
            fontWeight: isBold ? FontWeight.w700 : null),
      );

  Widget _listItemName() => Container(
        alignment: AlignmentDirectional.bottomStart,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            _textBack("Hristo Hristov", size: TEXT_SMALL_3_SIZE, isBold: true),
            SizedBox(height: SizeUtil.getAxisY(13.0)),
            _textBack("4 hours ago", size: TEXT_NORMAL_SIZE),
          ],
        ),
      );

  Widget _action(icon, value) => Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Icon(
            icon,
            size: SizeUtil.getAxisBoth(30.0),
            color: TEXT_BLACK_LIGHT,
          ),
          SizedBox(height: SizeUtil.getAxisY(26.0)),
          _textBack(value)
        ],
      );

  Widget _listItemAction() => Container(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              _action(Icons.favorite_border, "233"),
              SizedBox(height: SizeUtil.getAxisY(56.0)),
              _action(Icons.chat, "35"),
              SizedBox(height: SizeUtil.getAxisY(56.0)),
              _action(Icons.share, "12"),
              SizedBox(height: SizeUtil.getAxisY(56.0)),
              _action(Icons.more_vert, ""),
            ]),
      );

  Widget _listItem(index) => Container(
        height: SizeUtil.getAxisY(740.0),
        decoration: BoxDecoration(
            gradient: index % 2 == 1
                ? LinearGradient(
                    colors: [Color(0x55FFFFFF), Colors.transparent])
                : null),
        padding: EdgeInsets.only(
            top: SizeUtil.getAxisY(40.0), bottom: SizeUtil.getAxisY(20.0)),
        child: Container(
            child: Stack(
          children: <Widget>[
            Container(
              height: SizeUtil.getAxisY(550.0),
              width: SizeUtil.getAxisX(613.0),
              child: Image.asset(
                index % 2 == 0 ? FeedImage.feed12_pic1 : FeedImage.feed12_pic2,
                fit: BoxFit.cover,
                height: SizeUtil.getAxisY(550.0),
                width: SizeUtil.getAxisX(613.0),
              ),
            ),
            Positioned(
              width: SizeUtil.getAxisBoth(CIRCLE_BUTTON_HEIGHT),
              height: SizeUtil.getAxisBoth(CIRCLE_BUTTON_HEIGHT),
              left: SizeUtil.getAxisX(24.0),
              bottom: SizeUtil.getAxisY(89.0),
              child: Image.asset(
                FeedImage.feed12_header,
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              left: SizeUtil.getAxisX(160.0),
              bottom: SizeUtil.getAxisY(10.0),
              child: _listItemName(),
            ),
            Positioned(
              right: SizeUtil.getAxisX(40.0),
              top: SizeUtil.getAxisY(40.0),
              child: _listItemAction(),
            )
          ],
        )),
      );

  Widget _body() => ListView.builder(
        itemBuilder: (context, index) {
          return _listItem(index);
        },
        itemCount: 4,
        padding: EdgeInsets.only(top: 0.1),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [YELLOW, GREEN],
              begin: Alignment.topLeft,
              end: Alignment.centerLeft)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TopTitleBar(),
          Expanded(
            child: Stack(
              children: <Widget>[
                _body(),
                Positioned(
                  width: SizeUtil.width,
                  bottom: SizeUtil.getAxisY(41.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      FloatingActionButton(
                        onPressed: () {
                          print("you have pressed the button");
                        },
                        child: Image.asset(FeedImage.feed12_plus),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
