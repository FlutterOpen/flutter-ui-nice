import 'package:flutter/material.dart';
import 'package:flutter_ui_nice/const/color_const.dart';
import 'package:flutter_ui_nice/const/shadow_const.dart';
import 'package:flutter_ui_nice/page/feed/feed_const.dart';
import 'package:flutter_ui_nice/page/feed/top_title.dart';
import 'package:flutter_ui_nice/util/SizeUtil.dart';

const cardConsts = [
  {
    "author": "Hristo",
    "action": "added 127 new photos to Lorem ipsum dolr sit amet.",
    "time": "1 MINUTE",
    "like": "123",
    "chat": "67",
    "share": "12",
    "images_number": "+126",
    "avatar_image": FeedImage.feed1_avatar2,
    "images": [
      FeedImage.feed13_pic1,
      FeedImage.feed13_pic2,
      FeedImage.feed13_pic3,
    ]
  },
  {
    "author": "Mila",
    "action": "added 3 new photos to Lorem ipsum dolr sit amet.",
    "time": "12 HOURS",
    "like": "123",
    "chat": "67",
    "share": "12",
    "images_number": '0',
    "avatar_image": FeedImage.feed1_avatar1,
    "images": [
      FeedImage.feed13_pic1,
      FeedImage.feed13_pic2,
      FeedImage.feed13_pic3,
    ]
  },
];

class FeedPageFour extends StatefulWidget {
  @override
  _FeedPageFourState createState() => _FeedPageFourState();
}

var deviceHeight;
var deviceWidth;
Icon favIcon = Icon(Icons.favorite_border);
Icon chatIcon = Icon(Icons.chat);
Icon shareIcon = Icon(Icons.share);

class _FeedPageFourState extends State<FeedPageFour> {

  Widget _cardAction(Icon icon, int number) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: Row(
        children: <Widget>[
          icon,
          SizedBox(width: 5),
          Text(
            '$number',
            style: TextStyle(
                color: Colors.black38,
                fontSize: SizeUtil.getAxisBoth(TEXT_NORMAL_SIZE)),
          )
        ],
      ),
    );
  }

  Widget _avatar() {
    return (Container(
      margin: EdgeInsets.only(top: 18, left: deviceWidth * 0.22),
      height: 50.0,
      width: 50.0,
      decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(FeedImage.feed1_avatar2))),
    ));
  }

  Widget _feedCardImages() {
    return Positioned(
      top: 180.0,
      left: 26,
      child: Container(
        height: 230,
        width: 350,
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 20.0,
            spreadRadius: 5.0,
            offset: Offset(
              10.0, // horizontal, move right 10
              10.0, // vertical, move down 10
            ),
          )
        ], color: Colors.red, borderRadius: BorderRadius.circular(22.0)),
      ),
    );
  }

  Widget _feedCard() {
    return Container(
      width: double.infinity,
      child: Stack(
        children: <Widget>[_pinkCard(), _avatar(), _feedCardImages()],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    deviceWidth = MediaQuery.of(context).size.width;
    deviceHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        decoration:
            BoxDecoration(gradient: LinearGradient(colors: [YELLOW, GREEN])),
        child: Stack(
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            _cardClipper(),
            TopTitleBar(),
          ],
        ),
      ),
    );
  }


  Widget timeText () => Container(
    width: double.infinity,
    margin: EdgeInsets.all(20),
    child: Text(
      cardConsts[0]['time'],
      textAlign: TextAlign.right,
      style: TextStyle(
          color: Colors.black38,
          fontSize: SizeUtil.getAxisBoth(TEXT_SMALL_2_SIZE)
      ),
    ),
  );

  Widget descriptionText () => Container(
    margin: EdgeInsets.symmetric(horizontal: 20),
    child: RichText(
      text: TextSpan(
          text: '${cardConsts[0]['author']} ',
          style: TextStyle(
              fontSize: SizeUtil.getAxisBoth(TEXT_NORMAL_SIZE),
              fontWeight: FontWeight.bold,
              color: TEXT_BLACK
          ),
          children: <TextSpan> [
            TextSpan(
                text: cardConsts[0]['action'],
                style: TextStyle(
                    fontWeight: FontWeight.normal,
                    color: TEXT_BLACK_LIGHT
                )
            )
          ]
      ),
    ),
  );

  Widget _socialAction (Icon icon, String number) => Container(
    child: Row(
      children: <Widget>[
        icon,
        SizedBox(width: 7),
        Text(
          '$number',
          style: TextStyle(
            color: Colors.black45,
            fontSize: SizeUtil.getAxisBoth(TEXT_SMALL_2_SIZE)
          ),
        )
      ],
    ),
  );

  Widget _socialActionRow() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          _socialAction(favIcon, cardConsts[0]['like']),
          _socialAction(chatIcon, cardConsts[0]['chat']),
          _socialAction(shareIcon, cardConsts[0]['share'])
        ],
      ),
    );
  }

  Widget _cardDetails() {
    return Column(
      children: <Widget>[
        timeText(),
        Expanded(
            child: descriptionText()
        ),
        _socialActionRow()
      ],
    );
  }

  Widget _pinkCard() {
    return Center(
      child: Container(
        margin: EdgeInsets.only(top: 50),
        height: deviceHeight * 0.6,
        width: deviceWidth * 0.75,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(22.0),
            boxShadow: SHADOW,
            gradient: LinearGradient(colors: [RED_LIGHT, RED])),
        child: _cardDetails(),
      ),
    );
  }

  Widget _avatarCard() {
    return Positioned(
      top: deviceHeight * 0.027,
      left: deviceWidth * 0.2,
      child: Container(
        height: 60,
        width: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(7),
          image: DecorationImage(
            image: AssetImage(cardConsts[0]['avatar_image'])
          ),
          boxShadow: SHADOW,
        ),
      )
    );
  }

  Widget _imagesCard() {
    return Positioned(
      top: deviceHeight * 0.25,
      left: deviceWidth * 0.05,
      child: Container(
        height: 250,
        width: 370,
        decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(22),
          boxShadow: SHADOW,
        ),
      ),
    );
  }

  Widget _stackClipperCard() {
    return Stack(
      children: <Widget>[
        _pinkCard(),
        _avatarCard(),
        _imagesCard()
      ],
    );
  }

  Widget _cardClipper() {
    return ListView(
      children: <Widget>[
        SizedBox(
          height: 100,
        ),
        _stackClipperCard(),
      ],
    );
  }
}
