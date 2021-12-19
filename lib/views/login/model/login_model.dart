import 'package:mobx/mobx.dart';
import 'package:json_annotation/json_annotation.dart';

part 'login_model.g.dart';

@JsonSerializable()
class LoginModel extends _LoginModelBase with _$LoginModel {
  int? userId;
  int? id;
  String? title;
  String? body;

  LoginModel({this.userId, this.id, this.title, this.body});

factory LoginModel.fromJson(Map<String, dynamic> json) => _$LoginModelFromJson(json);
Map<String, dynamic> toJson() => _$LoginModelToJson(this);

}

abstract class _LoginModelBase with Store {
  
}