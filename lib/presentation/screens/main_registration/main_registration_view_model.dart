import 'package:flutter/material.dart';
import 'package:velocity_bloc/velocity_bloc.dart';

import '../../../data/repositories/repositories.dart';

class MainRegistrationViewModel {
  final Repository repository;
  MainRegistrationViewModel({required this.repository});

  TextEditingController controller = TextEditingController();
  bool showDropdown = false;
}
