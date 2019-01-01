import 'package:flutter/material.dart';
import 'package:flutter_ui_nice/const/color_const.dart';
import 'package:flutter_ui_nice/page/feed/feed_const.dart';
import 'package:flutter_ui_nice/page/feed/top_title.dart';
import 'package:flutter_ui_nice/util/SizeUtil.dart';

class FeedPageFour extends StatefulWidget {
  @override
  _FeedPageFourState createState() => _FeedPageFourState();
}

class _FeedPageFourState extends State<FeedPageFour> {
  Widget _pinkCard() {
    return Center(
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 40.0),
        height: 450,
        width: deviceWidth * 0.73,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(22.0),
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 20.0,
                spreadRadius: 5.0,
                offset: Offset(
                  10.0, // horizontal, move right 10
                  10.0, // vertical, move down 10
                ),
              )
            ],
            gradient: LinearGradient(colors: [RED_LIGHT, RED])),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              width: double.infinity,
              margin: EdgeInsets.all(22),
              child: Text('1 MINUTE',
                  style: TextStyle(
                      color: Colors.black38,
                      fontSize: SizeUtil.getAxisBoth(TEXT_SMALL_2_SIZE)),
                  textAlign: TextAlign.right),
            ),
            Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                    'Hristo added 127 new photos to Lorem Ipsum dolr sit amet.')),
            Expanded(child: Container()),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                _cardAction(favIcon, 123),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30.0),
                  child: _cardAction(commentIcon, 67),
                ),
                _cardAction(shareIcon, 12),
              ],
            )
          ],
        ),
      ),
    );
  }

  Icon favIcon = Icon(Icons.favorite_border);
  Icon commentIcon = Icon(Icons.chat);
  Icon shareIcon = Icon(Icons.share);
  Widget _cardAction(Icon icon, int number) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: Row(
        children: <Widget>[
          icon,
          SizedBox(width: 5),
          Text('$number')
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

  var deviceHeight;
  var deviceWidth;

  @override
  Widget build(BuildContext context) {
    deviceWidth = MediaQuery.of(context).size.width;
    deviceHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        decoration:
            BoxDecoration(gradient: LinearGradient(colors: [YELLOW, GREEN])),
        child: ListView(
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            TopTitleBar(),
            _feedCard(),
          ],
        ),
      ),
    );
  }
}
