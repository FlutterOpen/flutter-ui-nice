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

class ProfilePageTwo extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<ProfilePageTwo> {
  final String title = "Hristo Hristov";

  @override
  Widget build(BuildContext context) {
    Widget _bottomBar() {
      return Container(
        constraints: BoxConstraints.expand(height: SizeUtil.getAxisY(140.0)),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [YELLOW, GREEN],
            begin: Alignment.topCenter,
            end: Alignment.centerRight,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            InkWell(
              onTap: () => debugPrint('Icon home pressed'),
              child: Image.asset(ProfileImages.icons_home,
                  width: SizeUtil.getAxisX(ICON_BUTTON_WIDTH),
                  height: SizeUtil.getAxisY(ICON_BUTTON_HEIGHT)),
            ),
            InkWell(
              onTap: () => debugPrint('Icon stats pressed'),
              child: Image.asset(ProfileImages.icons_stats,
                  width: SizeUtil.getAxisX(ICON_BUTTON_WIDTH),
                  height: SizeUtil.getAxisY(ICON_BUTTON_HEIGHT)),
            ),
            InkWell(
              onTap: () => debugPrint('Icon heart pressed'),
              child: Image.asset(ProfileImages.icons_heart,
                  width: SizeUtil.getAxisX(ICON_BUTTON_WIDTH),
                  height: SizeUtil.getAxisY(ICON_BUTTON_HEIGHT)),
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
              title: this.title,
              onLeftIconPressed: () => Navigator.pop(context),
            ),
            Expanded(
              child: ListView(
                children: <Widget>[
                  Stack(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.symmetric(
                            vertical: SizeUtil.getAxisY(162.0),
                            horizontal: SizeUtil.getAxisX(28.0)),
                        child: Opacity(
                          opacity: 0.2,
                          child: new Container(
                            height: SizeUtil.getAxisY(722.0),
                            width: SizeUtil.getAxisX(46.5),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(15),
                                  bottomLeft: Radius.circular(15)),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black12,
                                  blurRadius: 15,
                                  spreadRadius: 8,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(
                            vertical: SizeUtil.getAxisY(116.0),
                            horizontal: SizeUtil.getAxisX(74.0)),
                        child: Opacity(
                          opacity: 0.6,
                          child: new Container(
                            height: SizeUtil.getAxisY(815.0),
                            width: SizeUtil.getAxisX(46.5),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(15),
                                  bottomLeft: Radius.circular(15)),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black12,
                                  blurRadius: 15,
                                  spreadRadius: 8,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(
                            top: SizeUtil.getAxisY(62.0),
                            bottom: SizeUtil.getAxisY(62.0),
                            left: SizeUtil.getAxisX(120.0),
                            right: 0.0),
                        child: Container(
                          height: SizeUtil.getAxisY(926.0),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(15),
                                bottomLeft: Radius.circular(15)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black12,
                                blurRadius: 15,
                                spreadRadius: 8,
                              ),
                            ],
                          ),
                          child: Column(
                            children: <Widget>[
                              ClipRRect(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(15)),
                                child: Image.asset(
                                  ProfileImages.profile_landscape,
                                  width: SizeUtil.getAxisX(630.0),
                                  height: SizeUtil.getAxisY(418.0),
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Container(
                                constraints: BoxConstraints.expand(
                                    height: SizeUtil.getAxisY(148.0)),
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    colors: [
                                      ProfileColors.COLOR_LIGHT_ORANGE,
                                      ProfileColors.COLOR_LIGHT_RED
                                    ],
                                    begin: Alignment.centerLeft,
                                    end: Alignment.centerRight,
                                  ),
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: <Widget>[
                                        Text(
                                          '7,455',
                                          style: TextStyle(
                                            color: TEXT_BLACK,
                                            fontSize: SizeUtil.getAxisBoth(
                                                TEXT_SIZE_M),
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                        Text(
                                          'followers',
                                          style: TextStyle(
                                            color: ProfileColors.COLOR_DARK,
                                            fontSize: SizeUtil.getAxisBoth(
                                                TEXT_SIZE_M),
                                          ),
                                        )
                                      ],
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: <Widget>[
                                        Text(
                                          '2,455',
                                          style: TextStyle(
                                            color: TEXT_BLACK,
                                            fontSize: SizeUtil.getAxisBoth(
                                                TEXT_SIZE_M),
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                        Text(
                                          'followings',
                                          style: TextStyle(
                                            color: ProfileColors.COLOR_DARK,
                                            fontSize: SizeUtil.getAxisBoth(
                                                TEXT_SIZE_M),
                                          ),
                                        )
                                      ],
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: <Widget>[
                                        Text(
                                          '455',
                                          style: TextStyle(
                                            color: TEXT_BLACK,
                                            fontSize: SizeUtil.getAxisBoth(
                                                TEXT_SIZE_M),
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                        Text(
                                          'photos',
                                          style: TextStyle(
                                            color: ProfileColors.COLOR_DARK,
                                            fontSize: SizeUtil.getAxisBoth(
                                                TEXT_SIZE_M),
                                          ),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                constraints: BoxConstraints.expand(
                                    height: SizeUtil.getAxisY(360.0)),
                                child: Stack(
                                  children: <Widget>[
                                    Positioned(
                                      width: SizeUtil.getAxisX(300.0),
                                      height: SizeUtil.getAxisY(360.0),
                                      right: SizeUtil.getAxisX(0.0),
                                      top: SizeUtil.getAxisY(0.0),
                                      child: Image.asset(
                                        ProfileImages.photos_07,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Positioned(
                                      width: SizeUtil.getAxisX(180.0),
                                      height: SizeUtil.getAxisY(180.0),
                                      left: SizeUtil.getAxisX(0.0),
                                      top: SizeUtil.getAxisY(0.0),
                                      child: Image.asset(
                                        ProfileImages.photos_04,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Positioned(
                                        width: SizeUtil.getAxisX(180.0),
                                        height: SizeUtil.getAxisY(180.0),
                                        top: SizeUtil.getAxisX(180.0),
                                        left: SizeUtil.getAxisY(0.0),
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.only(
                                              bottomLeft: Radius.circular(15)),
                                          child: Image.asset(
                                            ProfileImages.photos_05,
                                            width: SizeUtil.getAxisX(180.0),
                                            height: SizeUtil.getAxisY(180.0),
                                            fit: BoxFit.cover,
                                          ),
                                        )),
                                    Positioned(
                                      width: SizeUtil.getAxisX(180.0),
                                      height: SizeUtil.getAxisY(180.0),
                                      left: SizeUtil.getAxisX(180.0),
                                      top: SizeUtil.getAxisY(180.0),
                                      child: Image.asset(
                                        ProfileImages.photos_06,
                                        fit: BoxFit.cover,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        width: SizeUtil.getAxisX(214.0),
                        height: SizeUtil.getAxisY(214.0),
                        left: SizeUtil.getAxisX(282.0),
                        top: SizeUtil.getAxisY(608.0),
                        child: Container(
                          constraints: BoxConstraints.expand(
                            height: SizeUtil.getAxisY(214),
                            width: SizeUtil.getAxisX(214),
                          ),
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [Colors.redAccent, Colors.pinkAccent]),
                            borderRadius: BorderRadius.circular(22.0),
                          ),
                          child: Center(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  '+123',
                                  style: TextStyle(
                                    color: ProfileColors.COLOR_WHITE,
                                    fontSize:
                                        SizeUtil.getAxisBoth(TEXT_SIZE_XL),
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
                        ),
                      ),
                      Positioned(
                        width: SizeUtil.getAxisX(72.0),
                        height: SizeUtil.getAxisY(72.0),
                        left: SizeUtil.getAxisX(84.0),
                        top: SizeUtil.getAxisY(517.0),
                        child: InkWell(
                          onTap: () => debugPrint('Add button pressed'),
                          child: Image.asset(ProfileImages.add,
                              width: SizeUtil.getAxisX(72.0),
                              height: SizeUtil.getAxisY(72.0)),
                        ),
                      )
                    ],
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
