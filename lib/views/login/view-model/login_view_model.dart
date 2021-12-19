import 'package:mobx/mobx.dart';
part 'login_view_model.g.dart';

class LoginViewModel = _LoginViewModelBase with _$LoginViewModel;

abstract class _LoginViewModelBase with Store {
  @observable
  int count = 0;

  @computed
  bool get isEven => count % 2 == 1;

  @action
  void increment(){
    count++;
  }
}