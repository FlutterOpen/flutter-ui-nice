///
/// Created by Terrance Duong on 2019/01/03
/// Github: https://github.com/dndoanh
/// Email: dndoanh@gmail.com
///
import "package:flutter/material.dart";
import 'package:flutter_ui_nice/const/color_const.dart';
import 'package:flutter_ui_nice/page/profile/profile_const.dart';
import 'package:flutter_ui_nice/page/profile/top_bar.dart';
import 'package:flutter_ui_nice/util/SizeUtil.dart';

const photos = [
  ProfileImages.photos_01,
  ProfileImages.photos_02,
  ProfileImages.photos_03,
];

class Photo {
  Photo({this.path, this.isImage});

  final String path;
  final bool isImage;
}

class ProfilePageOne extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<ProfilePageOne> {
  @override
  Widget build(BuildContext context) {
    Widget _itemPhoto(String img) {
      return Container(
        margin: EdgeInsets.only(
          left: SizeUtil.getAxisX(10.0),
          right: SizeUtil.getAxisX(10.0),
        ),
        child: ClipRRect(
          borderRadius: new BorderRadius.circular(22.0),
          child: Image.asset(
            img,
            width: SizeUtil.getAxisBoth(PHOTO_BUTTON_HEIGHT),
            height: SizeUtil.getAxisBoth(PHOTO_BUTTON_HEIGHT),
          ),
        ),
      );
    }

    Widget _itemText(String txt) {
      return Container(
        margin: EdgeInsets.only(
          left: SizeUtil.getAxisX(10.0),
          right: SizeUtil.getAxisX(10.0),
        ),
        constraints: BoxConstraints.expand(
          height: SizeUtil.getAxisY(PHOTO_BUTTON_HEIGHT),
          width: SizeUtil.getAxisX(PHOTO_BUTTON_HEIGHT),
        ),
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              colors: [Colors.redAccent, Colors.pinkAccent]),
          borderRadius: BorderRadius.circular(22.0),
        ),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                txt,
                style: TextStyle(
                  color: ProfileColors.COLOR_WHITE,
                  fontSize: SizeUtil.getAxisBoth(TEXT_SIZE_XL),
                ),
              ),
              Text(
                ProfileStrings.STRING_PHOTOS,
                style: TextStyle(
                  color: ProfileColors.COLOR_WHITE,
                  fontSize: SizeUtil.getAxisBoth(TEXT_SIZE_S),
                ),
              )
            ],
          ),
        ),
      );
    }

    Widget _buildPhotos() {
      return Container(
        constraints: BoxConstraints.expand(
            height: SizeUtil.getAxisY(PHOTO_BUTTON_HEIGHT)),
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: photos.length > 2 ? photos.length + 1 : photos.length,
          itemBuilder: (context, idx) {
            if (idx < 2) {
              return _itemPhoto(photos[idx]);
            } else if (idx == 2) {
              if (photos.length > 2) {
                return _itemText("+" + photos.length.toString());
              } else {
                return _itemPhoto(photos[idx]);
              }
            } else {
              return _itemPhoto(photos[idx - 1]);
            }
          },
        ),
      );
    }

    Widget _bottomBar() {
      return Container(
        constraints:
            BoxConstraints.expand(height: SizeUtil.getAxisY(BOTTOM_BAR_HEIGHT)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Container(
              width: SizeUtil.getAxisX(PHOTO_BUTTON_HEIGHT),
              height: SizeUtil.getAxisY(PHOTO_BUTTON_HEIGHT),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Color(0x44FFFFFF), Color(0x44FFFFFF)],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight),
                borderRadius: BorderRadius.circular(
                  SizeUtil.getAxisX(22.0),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    '17,589',
                    style: TextStyle(
                      color: TEXT_BLACK,
                      fontSize: SizeUtil.getAxisBoth(TEXT_SIZE_S),
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    'followers',
                    style: TextStyle(
                      color: ProfileColors.COLOR_DARK,
                      fontSize: SizeUtil.getAxisBoth(TEXT_SIZE_S),
                    ),
                  )
                ],
              ),
            ),
            Container(
              width: SizeUtil.getAxisX(PHOTO_BUTTON_HEIGHT),
              height: SizeUtil.getAxisY(PHOTO_BUTTON_HEIGHT),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    '9,854',
                    style: TextStyle(
                      color: TEXT_BLACK,
                      fontSize: SizeUtil.getAxisBoth(TEXT_SIZE_S),
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Text(
                    'following',
                    style: TextStyle(
                      color: ProfileColors.COLOR_DARK,
                      fontSize: SizeUtil.getAxisBoth(TEXT_SIZE_S),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      );
    }

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [YELLOW, GREEN],
            begin: Alignment.topLeft,
            end: Alignment.centerLeft,
          ),
        ),
        child: Column(
          children: <Widget>[
            TopBar(
              leftIcon: ProfileImages.arrow_left,
              title: ProfileStrings.STRING_PROFILE,
              onLeftIconPressed: () => Navigator.pop(context),
            ),
            Expanded(
              child: ListView(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(
                      left: 100,
                      top: 30,
                      right: 15,
                      bottom: 30,
                    ),
                    child: Column(
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Image.asset(
                              ProfileImages.avatar,
                              width: SizeUtil.getAxisY(SQUARE_BUTTON_HEIGHT),
                              height: SizeUtil.getAxisY(SQUARE_BUTTON_HEIGHT),
                            ),
                            Container(
                              width: SizeUtil.getAxisY(REC_BUTTON_WIDTH),
                              height: SizeUtil.getAxisY(REC_BUTTON_HEIGHT),
                              decoration: new BoxDecoration(
                                gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  colors: [
                                    ProfileColors.COLOR_BLACK,
                                    ProfileColors.COLOR_GREY,
                                  ],
                                ),
                                borderRadius: new BorderRadius.circular(100.0),
                              ),
                              child: Material(
                                color: Colors.transparent,
                                shape: RoundedRectangleBorder(
                                  borderRadius:
                                      new BorderRadius.circular(100.0),
                                ),
                                child: InkWell(
                                  onTap: () => debugPrint('Follow pressed'),
                                  splashColor: ProfileColors.COLOR_GREY,
                                  highlightColor: ProfileColors.COLOR_GREY,
                                  borderRadius:
                                      new BorderRadius.circular(100.0),
                                  child: new Center(
                                    child: new Text(
                                      ProfileStrings.STRING_FOLLOW,
                                      style: new TextStyle(
                                        fontSize:
                                            SizeUtil.getAxisBoth(TEXT_SIZE_M),
                                        color: ProfileColors.COLOR_YELLOW,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 20.0),
                        Row(
                          children: <Widget>[
                            Text(
                              'Hristo Hristov',
                              style: TextStyle(
                                color: TEXT_BLACK,
                                fontSize: SizeUtil.getAxisBoth(TEXT_SIZE_XXL),
                                fontWeight: FontWeight.w300,
                              ),
                            )
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Text(
                              'Frankfurt am main',
                              style: TextStyle(
                                color: TEXT_BLACK,
                                fontSize: SizeUtil.getAxisBoth(TEXT_SIZE_M),
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                            Container(
                              width: 1.0,
                              height: 12,
                              color: TEXT_BLACK,
                              margin: EdgeInsets.only(left: 10, right: 10),
                            ),
                            Text(
                              'Germany',
                              style: TextStyle(
                                color: TEXT_BLACK,
                                fontSize: SizeUtil.getAxisBoth(TEXT_SIZE_M),
                                fontWeight: FontWeight.w300,
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  _buildPhotos(),
                  Container(
                    padding: EdgeInsets.only(
                        left: 100, top: 30, right: 15, bottom: 30),
                    child: Text(
                      'Excepteur sint occacupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Excepteur sint occacupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                      softWrap: true,
                      style: TextStyle(
                          color: TEXT_BLACK,
                          fontSize: SizeUtil.getAxisBoth(TEXT_SIZE_S),
                          height: 1.5),
                    ),
                  ),
                ],
              ),
            ),
            _bottomBar()
          ],
        ),
      ),
    );
  }
}
