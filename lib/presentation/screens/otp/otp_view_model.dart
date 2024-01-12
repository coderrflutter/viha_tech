import 'package:flutter/material.dart';
import 'package:viha_tech/data/repositories/repositories.dart';

class OtpViewModel {
  final Repository repository;
  OtpViewModel({required this.repository});

  TextEditingController otptextEditingController = TextEditingController();
  final List<TextEditingController> controllers =
      List.generate(4, (_) => TextEditingController());

  // ignore: non_constant_identifier_names
  void FieldChange(String value, int index, context) {
    if (value.length == 1 && index < controllers.length - 1) {
      FocusScope.of(context).nextFocus();
    }
  }
}
