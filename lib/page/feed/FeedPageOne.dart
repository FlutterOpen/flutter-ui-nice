///
/// Created by NieBin on 2018/12/25
/// Github: https://github.com/nb312
/// Email: niebin312@gmail.com
/// Modified by Srikanth on 2019/01/03
///
import "package:flutter/material.dart";
import 'package:flutter_ui_nice/const/color_const.dart';
import 'package:flutter_ui_nice/page/feed/feed_const.dart';
import 'package:flutter_ui_nice/page/feed/top_title.dart';
import 'package:flutter_ui_nice/util/SizeUtil.dart';
import 'package:flutter_ui_nice/util/GradientUtil.dart';

class FeedPageOne extends StatefulWidget {
  @override
  _FeedState createState() => _FeedState();
}

class _FeedState extends State<FeedPageOne> {
  Widget _textBack(content,
          {color = TEXT_BLACK_LIGHT,
          size = TEXT_SMALL_2_SIZE,
          isBold = false}) =>
      Text(
        content,
        style: TextStyle(
            color: color,
            fontSize: SizeUtil.getAxisBoth(size),
            fontWeight: isBold ? FontWeight.w700 : FontWeight.w300),
      );

  Widget _listItemName() => Container(
        alignment: AlignmentDirectional.topStart,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            _textBack("Excepteur occacupidat non proident anim.",
                size: TEXT_NORMAL_2_SIZE, isBold: true),
            _textBack("1 MINUTE", size: TEXT_NORMAL_SIZE, isBold: false)
          ],
        ),
      );

  Widget _listItem(index) => Container(
          child: Container(
        child: Stack(
          children: <Widget>[
            Container(
              height: SizeUtil.getAxisY(850.0),
              width: SizeUtil.getAxisX(613.0),
            ),
            Positioned(
              left: SizeUtil.getAxisX(64.0),
              right: SizeUtil.getAxisX(124.0),
              top: SizeUtil.getAxisY(120.0),
              child: _listItemName(),
            ),
            Positioned(
              left: SizeUtil.getAxisX(5.0),
              top: SizeUtil.getAxisY(250.0),
              child: Image.asset(
                index % 2 == 0 ? FeedImage.landscape : FeedImage.landscape,
                fit: BoxFit.cover,
                width: SizeUtil.getAxisX(300.0),
              ),
            ),
            Positioned(
              right: SizeUtil.getAxisX(5.0),
              top: SizeUtil.getAxisY(250.0),
              child: Image.asset(
                index % 2 == 0 ? FeedImage.night : FeedImage.night,
                fit: BoxFit.cover,
                height: SizeUtil.getAxisX(245.0),
              ),
            ),
            Positioned(
              left: SizeUtil.getAxisX(200.0),
              bottom: SizeUtil.getAxisY(120.0),
              child: Image.asset(
                index % 2 == 0 ? FeedImage.menonglass : FeedImage.menonglass,
                fit: BoxFit.cover,
                height: SizeUtil.getAxisX(225.0),
              ),
            ),
            Positioned(
                left: SizeUtil.getAxisX(400.0),
                bottom: SizeUtil.getAxisY(200.0),
                child: Container(
                  constraints: BoxConstraints.expand(
                      height: SizeUtil.getAxisY(110.0),
                      width: SizeUtil.getAxisX(110.0)),
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          colors: [Colors.redAccent, Colors.pinkAccent]),
                      borderRadius: BorderRadius.circular(10.0)),
                  child: Center(
                    child: Text('+33',
                        style: Theme.of(context)
                            .textTheme
                            .title
                            .copyWith(color: Colors.white)),
                  ),
                )),
            Positioned(
              width: SizeUtil.getAxisBoth(SQUARE_BUTTON_HEIGHT),
              height: SizeUtil.getAxisBoth(SQUARE_BUTTON_HEIGHT),
              right: SizeUtil.getAxisX(5.0),
              top: SizeUtil.getAxisY(100.0),
              child: Image.asset(
                index % 2 == 0
                    ? FeedImage.feed1_avatar1
                    : FeedImage.feed1_avatar2,
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              bottom: SizeUtil.getAxisY(0.0),
              child: Column(
                children: <Widget>[
                  Container(
                    constraints: BoxConstraints.expand(
                        height: SizeUtil.getAxisY(110.0),
                        width: SizeUtil.getAxisX(603.0)),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        gradient: GradientUtil.red()),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              _textBack("7,455",
                                  size: TEXT_NORMAL_2_SIZE, isBold: true),
                              _textBack("likes",
                                  size: TEXT_NORMAL_SIZE, isBold: false)
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              _textBack("2,455",
                                  size: TEXT_NORMAL_2_SIZE, isBold: true),
                              _textBack("comments",
                                  size: TEXT_NORMAL_SIZE, isBold: false)
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              _textBack("455",
                                  size: TEXT_NORMAL_2_SIZE, isBold: true),
                              _textBack("shares",
                                  size: TEXT_NORMAL_SIZE, isBold: false)
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ));

  Widget _body() => ListView.builder(
        itemBuilder: (context, index) {
          return Column(
            children: <Widget>[
              _listItem(index),
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 40.0, vertical: 10.0),
                child: Divider(color: Colors.black87),
              )
            ],
          );
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
          children: <Widget>[
            TopTitleBar(),
            Expanded(
              child: Container(
                padding: const EdgeInsets.symmetric(
                    horizontal: 30.0, vertical: 10.0),
                child: Stack(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20.0, vertical: 10.0),
                      child: Container(
                        decoration: BoxDecoration(
                            boxShadow: [BoxShadow(color: Colors.grey)],
                            borderRadius: BorderRadius.circular(10.0),
                            gradient: LinearGradient(
                                colors: [YELLOW, GREEN],
                                begin: Alignment.topRight,
                                end: Alignment.centerLeft)),
                      ),
                    ),
                    _body(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
