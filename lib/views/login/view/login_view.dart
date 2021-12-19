import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobxexample/views/login/view-model/login_view_model.dart';

class LoginView extends StatelessWidget {
  final _loginViewModel = LoginViewModel();
  LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return buildScaffold();
  }

  void othersAction(){
     _loginViewModel.activeOrPassive();
        _loginViewModel.increment();
  }

  Scaffold buildScaffold() {
    return Scaffold(
    appBar: buildAppbar(),
    body: buildColumn(),
    floatingActionButton: buildActionButton(),
  );
  }

  FloatingActionButton buildActionButton() {
    return FloatingActionButton(
    child: const Icon(Icons.add),
    onPressed: () {
     othersAction();
    },
  );
  }

  Column buildColumn() {
    return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.stretch,
    children: [
      Observer(builder: (_) {
        return buildVisibilityContainer();
      }),
      buildCenterText(),
    ],
  );
  }

  Center buildCenterText() {
    return Center(
      child: Observer(builder: (_) {
        return Text(_loginViewModel.count.toString());
      }),
    );
  }

  Visibility buildVisibilityContainer() {
    return Visibility(
        visible: _loginViewModel.isActive,
        child: Container(
          height: 100,
          width: 100,
          color: Colors.greenAccent,
        ),
      );
  }

  AppBar buildAppbar() {
    return AppBar(
    title: const Text("Mobx Example"),
  );
  }
}
