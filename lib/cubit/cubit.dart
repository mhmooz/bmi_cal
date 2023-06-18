import 'dart:math';

import 'package:bmi_cal/cubit/states.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppCubit extends Cubit<AppStates> {
  AppCubit() : super(InitialState());
  static AppCubit get(context) => BlocProvider.of(context);
  var weightController = TextEditingController();
  var heightController = TextEditingController();
  double? result;
  String? bodyStatus;

  void calculate() {
    emit(CaluclatingState());
    
    result = double.parse(weightController.text) /
        pow(double.parse(heightController.text) / 100, 2);
    if (result! < 18) bodyStatus = "Under Weight";
    if (result! > 18 && result! < 24) bodyStatus = "Normal Weight";
    if (result! > 24) bodyStatus = "Over Weight";
  }
}
