import 'package:flutter/material.dart';
import 'package:flutter_ui_nice/page/page_const.dart';
import 'package:flutter_ui_nice/page/signup/SignPageEight.dart';
import 'package:flutter_ui_nice/page/signup/SignPageFive.dart';
import 'package:flutter_ui_nice/page/signup/SignPageFour.dart';
import 'package:flutter_ui_nice/page/signup/SignPageEleven.dart';
import 'package:flutter_ui_nice/page/signup/SignPageSeven.dart';
import 'package:flutter_ui_nice/page/signup/SignPageSix.dart';
import 'package:flutter_ui_nice/page/signup/SignPageNine.dart';
import 'package:flutter_ui_nice/page/signup/SingPageTen.dart';
import 'const/string_const.dart';
import 'const/color_const.dart';
import 'const/page_str_const.dart';
import "page/page_const.dart";

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: StringConst.APP_NAME,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: MAIN_COLOR,
        accentColor: MAIN_COLOR,
        fontFamily: "Montserrat",
      ),
      home: HomePage(),
      routes: {
        SIGN_UP_PAGES[0]: (context) => SignPageOne(),
        SIGN_UP_PAGES[1]: (context) => SignPageTwo(),
        //SIGN_UP_PAGES[2]: (context) => SignPageThird(),
        SIGN_UP_PAGES[3]: (context) => SignPageFour(),
        SIGN_UP_PAGES[4]: (context) => SignPageFive(),
        SIGN_UP_PAGES[5]: (context) => SignPageSix(),
        SIGN_UP_PAGES[6]: (context) => SignPageSeven(),
        SIGN_UP_PAGES[7]: (context) => SignPageEight(),
        SIGN_UP_PAGES[8]: (context) => SignPageNine(),
        SIGN_UP_PAGES[9]: (context) => SignPageTeen(),
        SIGN_UP_PAGES[10]: (context) => SignPageEleven(),
        //FIXME there are other pages to jump with 'page_str_const.dart',there should be make by manager
      },
      onUnknownRoute: (setting) =>
          MaterialPageRoute(builder: (context) => EmptyPage()),
    );
  }
}
