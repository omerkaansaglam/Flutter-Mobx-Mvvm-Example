import 'package:mobx/mobx.dart';
part 'login_view_model.g.dart';

class LoginViewModel = _LoginViewModelBase with _$LoginViewModel;

abstract class _LoginViewModelBase with Store {
  @observable
  int count = 0;

  @observable
  bool isActive = false;

  @action
  void activeOrPassive(){
    isActive =! isActive;
  }

  @action
  void increment(){
    count++;
  }

}