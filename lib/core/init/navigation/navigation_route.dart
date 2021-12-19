import 'package:flutter/material.dart';
import 'package:mobxexample/core/constants/navigation/navigation_constant.dart';
import 'package:mobxexample/views/login/view/login_view.dart';
import 'package:mobxexample/views/splash/view/splash_view.dart';

class NavigationRoute {
  static final NavigationRoute _instance = NavigationRoute._init();
  static NavigationRoute get instance => _instance;
  NavigationRoute._init();

  Route<dynamic> generateRoute(RouteSettings args) {
    switch (args.name) {
      case NavigationConstants.SPLASH:
        return _normalNavigate( SplashView(), args);
      case NavigationConstants.LOGIN:
        return _normalNavigate( LoginView(), args);
      default:
        return MaterialPageRoute(
            builder: (context) => const Scaffold(
                  body: Center(
                    child: Text("Sayfa bulunamadı."),
                  ),
                ));
    }
  }

  //Flutter default navigate işlemi
  MaterialPageRoute _normalNavigate(Widget widget, RouteSettings settings) {
    return MaterialPageRoute(builder: (context) => widget, settings: settings);
  }
}