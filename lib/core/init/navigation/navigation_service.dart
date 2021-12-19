import 'package:flutter/cupertino.dart';
import 'package:mobxexample/core/init/navigation/INavigationService.dart';

class NavigationService implements INavigationService {
  static final NavigationService _instance = NavigationService._init();
  static NavigationService get instance => _instance;

  NavigationService._init();

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  final removeAllOldRoutes = (Route<dynamic> route) => false;

  //Flutter default navigate işlemi
  @override
  Future<void> navigateToPage({String? path, Object? data}) async {
    await navigatorKey.currentState!.pushNamed(path!, arguments: data);
  }

  //Flutter route işlemi (arka planda kalan sayfaları öldürme) -> Not go back page
  @override
  Future<void> navigateToPageClear({String? path, Object? data}) async {
    await navigatorKey.currentState!
        .pushNamedAndRemoveUntil(path!, removeAllOldRoutes, arguments: data);
  }
}