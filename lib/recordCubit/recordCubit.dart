import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rosheta/recordCubit/recordStates.dart';

import '../dio/diohelper.dart';
import '../models/hystory.dart';

class MedicalCubit extends Cubit<MedicalStates> {
  MedicalCubit() : super(MedicalInitialState());

  static MedicalCubit get(context) => BlocProvider.of<MedicalCubit>(context);

  HistoryModel? medicalmodel;

  void getMedical() {
    emit(MedicalLoading());
    DioHelper.getData(
      url:
          'https://localhost:7175/api/MedicalRecord/11688b91-5274-4d49-afa8-0d0af8a8ddf8',
    ).then((value) {
      print(value.data.toString());
      medicalmodel = HistoryModel.fromjson(value.data);
      emit(MedicalSuccess());
    }).catchError((error) {
      print(error.toString());
    });
  }
}
