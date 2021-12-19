import 'package:easy_localization/easy_localization.dart';
import 'package:mobxexample/core/constants/app/app_constant.dart';


extension StringLocalization on String {
  String get locale => this.tr();

  String? get isValidEmail => contains(RegExp(AppConstants.EMAIL_REGIEX)) ? null : 'Email does not valid';

  bool get isValidEmails => RegExp(AppConstants.EMAIL_REGIEX).hasMatch(this);
}

extension ImagePathExtension on String {
  String get toSVG => 'assets/svg/$this.svg';
}