///
/// Created by NieBin on 18-12-14
/// Github: https://github.com/nb312
/// Email: niebin312@gmail.com
///
import "package:flutter/material.dart";
import 'package:flutter_ui_nice/item/menu_stream.dart';
import 'package:flutter_ui_nice/item/Menu.dart';
import 'package:flutter_ui_nice/const/string_const.dart';
import 'package:flutter_ui_nice/view/AboutMeTitle.dart';
import 'package:flutter_ui_nice/const/size_const.dart';
import 'package:flutter_ui_nice/const/images_const.dart';
import 'package:flutter_ui_nice/const/color_const.dart';
import 'package:flutter_ui_nice/util/SizeUtil.dart';

class HomePage extends StatelessWidget {
  final _scaffoldState = GlobalKey<ScaffoldState>();

  Widget _topBar() => SliverAppBar(
        elevation: 1.0,
        pinned: true,
        expandedHeight: 150.0,
        flexibleSpace: FlexibleSpaceBar(
          title: Padding(
            padding: EdgeInsets.only(top: 10.0),
            child: Row(
              children: <Widget>[
                Image.asset(
                  MainImagePath.image_app,
                  width: 40,
                  height: 40,
                ),
                SizedBox(
                  width: 6.0,
                ),
                Text(
                  StringConst.APP_NAME,
                  style: TextStyle(color: Colors.white),
                )
              ],
            ),
          ),
          background: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                YELLOW,
                BLUE,
              ]),
            ),
          ),
          collapseMode: CollapseMode.pin,
        ),
      );

  Widget _menuItem(context, item) {
    return InkWell(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
            color: Colors.grey[800],
            offset: Offset(0.0, 2.0),
          )
        ]),
        constraints: BoxConstraints.expand(height: 60.0),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                item,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: TEXT_NORMAL_SIZE,
                    fontWeight: FontWeight.w700),
              ),
            ]
//            Divider(
//              height: 1.0,
//              color: Colors.white,
//            )
//          ],
            ),
      ),
      onTap: () {
        Navigator.pop(context);
        Navigator.pushNamed(context, "$item");
      },
    );
  }

  Widget _menuList(Menu menu) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return _menuItem(context, menu.items[index]);
      },
      itemCount: menu.items.length,
    );
  }

  Widget _header() {
    return Ink(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 4.0),
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            PURPLE,
            Colors.grey[900],
          ]),
        ),
        constraints: BoxConstraints.expand(height: 80.0),
        child: Center(
          child: Row(
            children: <Widget>[
              CircleAvatar(
                radius: 30.0,
                backgroundImage: AssetImage(MainImagePath.image_header),
              ),
              SizedBox(
                width: 20.0,
              ),
              Text(
                StringConst.CREATE_BY,
                style:
                    TextStyle(color: Colors.white, fontSize: TEXT_NORMAL_SIZE),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _clickMenu(context, Menu menu) {
    showModalBottomSheet(
      context: context,
      builder: (context) => Material(
            color: Colors.white,
            clipBehavior: Clip.antiAliasWithSaveLayer,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.0),
                    topRight: Radius.circular(20.0))),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                _header(),
                Expanded(
                  child: _menuList(menu),
                ),
                AboutMeTitle(),
              ],
            ),
          ),
    );
  }

  Widget _gridItem(context, Menu menu) => InkWell(
        onTap: () {
          _clickMenu(context, menu);
        },
        child: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            Image.asset(
              menu.image,
              fit: BoxFit.cover,
            ),
            Container(
              constraints: BoxConstraints.expand(),
              decoration: BoxDecoration(
                gradient: RadialGradient(
                    colors: [PURPLE, Colors.grey[850].withOpacity(0.9)],
                    radius: 0.3),
              ),
            ),
            Container(
              constraints: BoxConstraints.expand(),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      menu.icon,
                      color: Colors.white,
                    ),
                    SizedBox(
                      height: 4.0,
                    ),
                    Text(
                      menu.title,
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w700),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      );

  Widget _gridView(BuildContext context, List<Menu> list) => SliverGrid(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisSpacing: 4.0,
            crossAxisSpacing: 4.0,
            childAspectRatio: 1.0,
            crossAxisCount: 2),
        delegate: SliverChildBuilderDelegate((context, index) {
          var menu = list[index];
          return _gridItem(context, menu);
        }, childCount: list.length),
      );

  Widget _streamBuild(context) {
    var controller = MenuController();
    return StreamBuilder(
      builder: (context, shot) {
        return shot.hasData
            ? CustomScrollView(
                slivers: <Widget>[_topBar(), _gridView(context, shot.data)],
              )
            : Center(
                child: CircularProgressIndicator(),
              );
      },
      stream: controller.menuItems,
    );
  }

  Widget _showAndroid(context) {
    return Theme(
      data: Theme.of(context).copyWith(canvasColor: Colors.transparent),
      child: Scaffold(
        key: _scaffoldState,
        body: _streamBuild(context),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    SizeUtil.size = MediaQuery.of(context).size;
    var size = MediaQuery.of(context).size;
    print("width :${size.width},height:${size.height}");
    return _showAndroid(context);
  }
}
