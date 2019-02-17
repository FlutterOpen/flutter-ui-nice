///
/// Created by NieBin on 2019/2/17
/// Github: https://github.com/nb312
/// Email: niebin312@gmail.com
///
import "package:flutter/material.dart";
import 'feed_const.dart';
import 'package:flutter_ui_nice/util/SizeUtil.dart';
import 'package:flutter_ui_nice/const/_const.dart';
import 'package:flutter_ui_nice/util/GradientUtil.dart';

const contents = [
  {
    "time": "2019-02-17",
    "contents": [
      {
        "type": 0,
        "header": FeedImage.FEED_3_PIC_HEADER_01,
        "des": "Hristo added 127 new photos.",
        "pic": FeedImage.FEED_3_PIC_01,
        "contents": "",
        "time": "10m"
      },
      {
        "type": 1,
        "header": FeedImage.FEED_3_PIC_HEADER_02,
        "des": "Samanta lorem ipsum dolor sit amet.",
        "pic": FeedImage.FEED_3_PIC_02,
        "contents": "",
        "time": "2h"
      },
      {
        "type": 2,
        "header": FeedImage.FEED_3_PIC_HEADER_03,
        "des": "Mila Valentino loem ipsum dolsit amet.",
        "pic": FeedImage.FEED_3_PIC_03,
        "contents":
            "Excepteur sint occaecat cupitat non proident, sunt in culpa qui officia deserunt mollit anim",
        "time": "6h"
      },
    ]
  },
  {
    "time": "2019-02-17",
    "contents": [
      {
        "type": 0,
        "header": FeedImage.FEED_3_PIC_HEADER_03,
        "des": "Hristo added 127 new photos.",
        "pic": FeedImage.FEED_3_PIC_03,
        "contents": "",
        "time": "10m"
      },
      {
        "type": 1,
        "header": FeedImage.FEED_3_PIC_HEADER_01,
        "des": "Samanta lorem ipsum dolor sit amet.",
        "pic": FeedImage.FEED_3_PIC_01,
        "contents": "",
        "time": "2h"
      },
      {
        "type": 2,
        "header": FeedImage.FEED_3_PIC_HEADER_02,
        "des": "Mila Valentino loem ipsum dolsit amet.",
        "pic": FeedImage.FEED_3_PIC_02,
        "contents":
            "Excepteur sint occaecat cupitat non proident, sunt in culpa qui officia deserunt mollit anim",
        "time": "6h"
      },
    ]
  },
  {
    "time": "2019-02-17",
    "contents": [
      {
        "type": 0,
        "header": FeedImage.FEED_3_PIC_HEADER_01,
        "des": "Hristo added 127 new photos.",
        "pic": FeedImage.FEED_3_PIC_01,
        "contents": "",
        "time": "10m"
      },
      {
        "type": 1,
        "header": FeedImage.FEED_3_PIC_HEADER_02,
        "des": "Samanta lorem ipsum dolor sit amet.",
        "pic": FeedImage.FEED_3_PIC_02,
        "contents": "",
        "time": "2h"
      },
      {
        "type": 2,
        "header": FeedImage.FEED_3_PIC_HEADER_03,
        "des": "Mila Valentino loem ipsum dolsit amet.",
        "pic": FeedImage.FEED_3_PIC_03,
        "contents":
            "Excepteur sint occaecat cupitat non proident, sunt in culpa qui officia deserunt mollit anim",
        "time": "6h"
      },
    ]
  },
];

class FeedThreePage extends StatefulWidget {
  @override
  _FeedThreeState createState() => _FeedThreeState();
}

class _FeedThreeState extends State<FeedThreePage> {
  Widget _left() => Container(
        margin: EdgeInsets.only(
          top: SizeUtil.getAxisY(67),
          left: SizeUtil.getAxisX(22),
        ),
        height: SizeUtil.getAxisBoth(100),
        width: SizeUtil.getAxisBoth(100),
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                FeedImage.FEED_3_PIC_LEFT,
              ),
              fit: BoxFit.cover),
          shape: BoxShape.circle,
        ),
      );

  Widget _contentsFirst(json) => Stack(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(left: SizeUtil.getAxisX(302)),
            alignment: Alignment.center,
            height: SizeUtil.getAxisY(340),
            child: Text(
              "+126",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  fontSize: SizeUtil.getAxisBoth(40)),
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                bottomLeft: Radius.circular(10),
              ),
              image: DecorationImage(
                fit: BoxFit.cover,
                alignment: Alignment.topRight,
                image: AssetImage(
                  json["pic"],
                ),
              ),
            ),
          ),
          Positioned(
            top: SizeUtil.getAxisY(174),
            child: Container(
//              color: BLUE_LIGHT,
              height: SizeUtil.getAxisY(100),
              width: SizeUtil.getAxisX(100),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(json["header"]), fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(10)),
            ),
          ),
          Positioned(
            top: SizeUtil.getAxisY(310),
            child: Container(
              width: SizeUtil.getAxisX(230),
              child: Text(
                json["des"],
                style: TextStyle(
                    fontSize: SizeUtil.getAxisBoth(26), color: TEXT_BLACK),
              ),
            ),
          ),
          Container(
            color: TEXT_BLACK,
            margin: EdgeInsets.only(
              top: SizeUtil.getAxisY(430),
            ),
            width: SizeUtil.getAxisX(470),
            height: SizeUtil.getAxisY(3),
          ),
        ],
      );

  Widget _contentsSecond(json) => Container(
        alignment: Alignment.topLeft,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: SizeUtil.getAxisY(46)),
              alignment: Alignment.topLeft,
              height: SizeUtil.getAxisY(100),
              width: SizeUtil.getAxisX(100),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(json["header"]), fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(10)),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: SizeUtil.getAxisY(44)),
              child: Text(
                json["des"],
                style: TextStyle(
                    fontSize: SizeUtil.getAxisBoth(26), color: TEXT_BLACK),
              ),
            ),
            Container(
              color: TEXT_BLACK,
              width: SizeUtil.getAxisX(470),
              height: SizeUtil.getAxisY(3),
            ),
          ],
        ),
      );

  Widget _contentsThree(json) => Stack(
        children: <Widget>[
          Positioned(
            top: SizeUtil.getAxisY(60),
            child: Container(
//              color: BLUE_LIGHT,
              height: SizeUtil.getAxisY(100),
              width: SizeUtil.getAxisX(100),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(json["header"]), fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(10)),
            ),
          ),
          Container(
            margin: EdgeInsets.only(
                left: SizeUtil.getAxisX(302), top: SizeUtil.getAxisY(34)),
            alignment: Alignment.center,
            height: SizeUtil.getAxisY(260),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                bottomLeft: Radius.circular(10),
              ),
              image: DecorationImage(
                fit: BoxFit.cover,
                alignment: Alignment.topRight,
                image: AssetImage(
                  json["pic"],
                ),
              ),
            ),
          ),
          Positioned(
            top: SizeUtil.getAxisY(194),
            child: Container(
              width: SizeUtil.getAxisX(270),
              child: Text(
                json["des"],
                style: TextStyle(
                    fontSize: SizeUtil.getAxisBoth(26), color: TEXT_BLACK),
              ),
            ),
          ),
          Positioned(
            top: SizeUtil.getAxisY(344),
            child: Container(
              width: SizeUtil.getAxisX(438),
              child: Text(
                json["contents"],
                style: TextStyle(
                    fontSize: SizeUtil.getAxisBoth(26), color: TEXT_BLACK),
              ),
            ),
          ),
        ],
      );

  Widget _listContent(days) => Container(
        padding: EdgeInsets.only(left: SizeUtil.getAxisX(48)),
        child: Column(
          children: <Widget>[
            _contentsFirst(days[0]),
            _contentsSecond(days[1]),
            Expanded(
              child: _contentsThree(days[2]),
            )
          ],
        ),
      );

  Widget _listDays(days) => Container(
        child: Stack(
          children: <Widget>[
            Positioned(
              left: SizeUtil.getAxisX(32),
              top: SizeUtil.getAxisY(320),
              child: Text(days[0]["time"]),
            ),
            Positioned(
              left: SizeUtil.getAxisX(32),
              top: SizeUtil.getAxisY(620),
              child: Text(days[1]["time"]),
            ),
            Positioned(
              left: SizeUtil.getAxisX(32),
              top: SizeUtil.getAxisY(900),
              child: Text(days[2]["time"]),
            ),
            Container(
              height: SizeUtil.getAxisY(1140),
              margin: EdgeInsets.only(
                  top: SizeUtil.getAxisY(52), left: SizeUtil.getAxisY(134)),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                  ),
                  gradient: GradientUtil.red()),
            ),
            Container(
              height: SizeUtil.getAxisY(1192),
              margin: EdgeInsets.only(left: SizeUtil.getAxisY(134)),
              child: _listContent(days),
            ),
          ],
        ),
      );

  Widget _list() => Container(
        child: ListView.builder(
          itemBuilder: (context, index) => Container(
                child: Stack(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: SizeUtil.getAxisX(134),
                          vertical: SizeUtil.getAxisY(54)),
                      child: Text(
                        contents[index]["time"],
                        style: TextStyle(
                            fontSize: SizeUtil.getAxisBoth(26),
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(
                        top: SizeUtil.getAxisY(70),
                      ),
                      child: Container(
                        height: SizeUtil.getAxisY(1207),
                        child: _listDays(contents[index]["contents"]),
                      ),
                    )
                  ],
                ),
              ),
          itemCount: contents.length,
          shrinkWrap: true,
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(gradient: GradientUtil.yellowBlue()),
        child: Stack(
          children: <Widget>[
            _left(),
            _list(),
          ],
        ),
      ),
    );
  }
}
