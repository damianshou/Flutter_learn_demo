import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart' hide Action;
import 'package:flutter/widgets.dart' hide Action;

// 客户2
import './app_two/tabbar/page.dart';
import './app_two/one_tab/page.dart';
import './app_two/two_tab/page.dart';
import './app_two/three_tab//page.dart';

Widget createTwoApp() {
  final AbstractRoutes routes =
      PageRoutes(pages: <String, Page<Object, dynamic>>{
    'user_two.tabbar': UserTwoTabbarPage(),
    'user_two.one': UserTwoOnePage(), //在这里添加页面
    'user_two.two': UserTwoTwoPage(),
    'user_two.three': UserTwoThreePage(),
  });

  return MaterialApp(
    title: 'FishDemo',
    theme: ThemeData(
      primarySwatch: Colors.blue,
    ),
    home: routes.buildPage('user_two.tabbar', null), //把他作为默认页面
    onGenerateRoute: (RouteSettings settings) {
      return MaterialPageRoute<Object>(builder: (BuildContext context) {
        return routes.buildPage(settings.name, settings.arguments);
      });
    },
  );
}
