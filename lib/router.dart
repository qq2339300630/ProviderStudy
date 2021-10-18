import 'package:flutter/material.dart';
import 'package:providerstudy/views/home.dart';
import 'package:providerstudy/views/login.dart';

import 'RoutePaths.dart';

class Router {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutePaths.LOGIN:
        return MaterialPageRoute(builder: (_) => LoginView());
      case RoutePaths.HOME:
        return MaterialPageRoute(builder: (_) => HomeView());
      default:
        return MaterialPageRoute(builder: (_) =>
        Scaffold(body: Center(child: Text('没有找到对应的页面: ${settings.name}'), ), )
        );
    }
  }
}