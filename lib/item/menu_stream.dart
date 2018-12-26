///
/// Created by NieBin on 18-12-15
/// Github: https://github.com/nb312
/// Email: niebin312@gmail.com
///
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_ui_nice/item/Menu.dart';
import 'package:flutter_ui_nice/const/images_const.dart';
import 'package:flutter_ui_nice/const/page_str_const.dart';

const _MENU_STRINGS = [
  {'title': "Sign Up", 'items': SIGN_UP_PAGES},
  {'title': "Walk Through", 'items': WALK_THROUGH_PAGES},
  {'title': "Navigation", 'items': NAVIGATION_PAGES},
  {'title': "Profile", 'items': PROFILE_PAGES},
  {'title': "Feed", 'items': FEED_PAGES},
  {'title': "Chat", 'items': CHAT_PAGES},
  {'title': "Shoppig", 'items': SHOPPING_PAGES},
  {'title': "Statistics", 'items': STATISTIC_PAGES},
  {'title': "Media", 'items': MEDIA_PAGES},
  {'title': "Camera", 'items': CAMERA_PAGES},
];
const _MENU_COLORS = [
  0xff050505,
  0xffc8c4bd,
  0xffc7d8f4,
  0xff7f5741,
  0xff261d33,
  0xff2a8ccf,
  0xffe19b6b,
  0xffe19b6b,
  0xffddcec2,
  0xff261d33,
];
const _MENU_ICONS = [
  Icons.airplanemode_active,
  Icons.live_help,
  Icons.location_on,
  Icons.account_box,
  Icons.feedback,
  Icons.chat,
  Icons.shopping_cart,
  Icons.all_inclusive,
  Icons.play_circle_outline,
  Icons.linked_camera,
];
const _IMAGE_PATHS = [
  MainImagePath.image_sign_up,
  MainImagePath.image_walk_through,
  MainImagePath.image_navigation,
  MainImagePath.image_profile,
  MainImagePath.image_feed,
  MainImagePath.image_chat,
  MainImagePath.image_shopping,
  MainImagePath.image_statistic,
  MainImagePath.image_media,
  MainImagePath.image_camera,
];

class MenuController {
  final controller = StreamController<List<Menu>>();

  Stream<List<Menu>> get menuItems => controller.stream;

  MenuController({List<Menu> menus}) {
    controller.add(menus ?? _defaultMenus());
  }

  static String _title(index) {
    return _MENU_STRINGS[index % _MENU_STRINGS.length]['title'];
  }

  static List<String> _items(index) {
    return _MENU_STRINGS[index % _MENU_STRINGS.length]['items'];
  }

  List<Menu> _defaultMenus() {
    var list = List<Menu>();
    for (int i = 0; i < _MENU_STRINGS.length; i++) {
      list.add(Menu(
          title: _title(i),
          icon: _MENU_ICONS[i],
          menuColor: Color(_MENU_COLORS[i]),
          image: _IMAGE_PATHS[i],
          items: _items(i)));
    }
    return list;
  }
}
