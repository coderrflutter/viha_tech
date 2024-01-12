import 'package:flutter/material.dart';
import 'package:viha_tech/data/repositories/repositories.dart';
import 'package:viha_tech/presentation/screens/register/register_model.dart';
import 'package:velocity_bloc/velocity_bloc.dart';

class RegisterViewModel {
  final Repository repository;
  RegisterViewModel({required this.repository});

  final VelocityBloc<RegisterModel> registerModelBloc =
      VelocityBloc<RegisterModel>(RegisterModel());
  TextEditingController mobileNumberController = TextEditingController();

  sendOtp(String mobile, String sourceserviceId, context) async {
    var data = await repository.registerRepo
        .fetchregisterOtp(mobile, sourceserviceId, context);
    // ignore: unrelated_type_equality_checks
    if (data.status == 200) {
      registerModelBloc.onUpdateData(data);
    }
  }
}
