import 'package:flutter/material.dart';
import 'package:flutter_ui_nice/page/page_const.dart';
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
      theme: ThemeData(primaryColor: MAIN_COLOR, accentColor: MAIN_COLOR),
      home: HomePage(),
      routes: {
        SIGN_UP_PAGES[0]: (context) => SignPageOne(),
        SIGN_UP_PAGES[1]: (context) => SignPageTwo(),

        ///FEED group page
        FEED_PAGES[0]: (context) => FeedPageOne(),
        FEED_PAGES[0]: (context) => FeedPageOne(),
        FEED_PAGES[0]: (context) => FeedPageOne(),
        FEED_PAGES[0]: (context) => FeedPageOne(),
        FEED_PAGES[0]: (context) => FeedPageOne(),
        FEED_PAGES[0]: (context) => FeedPageOne(),
        FEED_PAGES[9]: (context) => FeedPageTen(),
        FEED_PAGES[10]: (context) => FeedPageEleven(),
        FEED_PAGES[11]: (context) => FeedPageTwelve(),
        FEED_PAGES[12]: (context) => FeedPageThirteen(),
        //FIXME there are other pages to jump with 'page_str_const.dart',there should be make by manager
      },
      onUnknownRoute: (setting) =>
          MaterialPageRoute(builder: (context) => EmptyPage()),
    );
  }
}
