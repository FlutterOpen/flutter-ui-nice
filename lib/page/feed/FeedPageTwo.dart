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

class FeedPageTwo extends StatefulWidget {
  @override
  _FeedState createState() => _FeedState();
}

class _FeedState extends State<FeedPageTwo> {
  Widget _textBack(content,
          {color = TEXT_BLACK_LIGHT,
          size = TEXT_SMALL_2_SIZE,
          isBold = false,
          softWrap: true}) =>
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
              height: SizeUtil.getAxisY(550.0),
              width: SizeUtil.getAxisX(663.0),
            ),
            Positioned(
              left: SizeUtil.getAxisX(64.0),
              right: SizeUtil.getAxisX(124.0),
              top: SizeUtil.getAxisY(120.0),
              child: _listItemName(),
            ),
            Positioned(
              left: SizeUtil.getAxisX(3.0),
              right: SizeUtil.getAxisX(5.0),
              top: SizeUtil.getAxisY(70.0),
              child: Image.asset(
                index % 2 == 0
                    ? FeedImage.feed2_image1
                    : FeedImage.feed2_image2,
                fit: BoxFit.cover,
                width: SizeUtil.getAxisX(600.0),
              ),
            ),
            Positioned(
              width: SizeUtil.getAxisBoth(SQUARE_BUTTON_HEIGHT),
              height: SizeUtil.getAxisBoth(SQUARE_BUTTON_HEIGHT),
              left: SizeUtil.getAxisX(5.0),
              top: SizeUtil.getAxisY(100.0),
              child: Image.asset(
                index % 2 == 0
                    ? FeedImage.feed1_avatar1
                    : FeedImage.feed1_avatar2,
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              bottom: SizeUtil.getAxisY(70.0),
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
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.all(10.0),
                            width: 200.0,
                            child: _textBack(
                                "Excepteur occacupidat non proident anim.",
                                size: TEXT_SMALL_SIZE,
                                isBold: true),
                          ),
                          Container(
                            padding: EdgeInsets.all(10.0),
                            width: 70.0,
                            child: _textBack("127 LIKES",
                                size: TEXT_SMALL_SIZE, isBold: false),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
                bottom: SizeUtil.getAxisY(70.0),
                right: SizeUtil.getAxisX(0.0),
                child: Image.asset(FeedImage.heart,
                    width: SizeUtil.getAxisY(CIRCLE_BUTTON_HEIGHT),
                    height: SizeUtil.getAxisY(CIRCLE_BUTTON_HEIGHT))),
          ],
        ),
      ));

  Widget _body() => ListView.builder(
        itemBuilder: (context, index) {
          return Column(
            children: <Widget>[_listItem(index)],
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
                    // Padding(
                    //   padding: const EdgeInsets.symmetric(
                    //       horizontal: 20.0, vertical: 10.0),
                    //   child: Container(
                    //     decoration: BoxDecoration(
                    //         boxShadow: [BoxShadow(color: Colors.grey)],
                    //         borderRadius: BorderRadius.circular(10.0),
                    //         gradient: LinearGradient(
                    //             colors: [YELLOW, GREEN],
                    //             begin: Alignment.topRight,
                    //             end: Alignment.centerLeft)),
                    //   ),
                    // ),
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
