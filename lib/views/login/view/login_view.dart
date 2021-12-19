import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobxexample/views/login/view-model/login_view_model.dart';

class LoginView extends StatelessWidget {
  final _loginViewModel = LoginViewModel();
  LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Observer(builder: (_) {
          return Text(_loginViewModel.count.toString());
        }),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _loginViewModel.increment();
        },
      ),
    );
  }
}
