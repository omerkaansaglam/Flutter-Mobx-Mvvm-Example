import 'package:flutter/material.dart';
import 'package:mobxexample/core/init/lang/locale_keys.g.dart';
import 'package:mobxexample/product/widgets/text/locale_text.dart';

class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  _SplashViewState createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
           const LocaleText(text: LocaleKeys.splash_hello),
        ],
      ),
    );
  }
}
