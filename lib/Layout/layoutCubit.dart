import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rosheta/Doctors.dart';
import 'package:rosheta/Prescription.dart';
import 'package:rosheta/appointment.dart';

import '../Screen_3.dart';
import '../Screen_6.dart';
import 'layoutStates.dart';

class LayoutCubit extends Cubit<LayoutStates> {
  //initial Constructor.
  LayoutCubit() : super(LayoutInitialState());

  static LayoutCubit get(context) => BlocProvider.of(context);

  int currentIndex = 0;

  List<BottomNavigationBarItem> bottomItems = [
    BottomNavigationBarItem(
      icon: Icon(Icons.record_voice_over_outlined),
      label: 'MedicineRecord',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.document_scanner_rounded),
      label: 'Doctor',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.list),
      label: 'PrescriptionScreen',
    ),
  ];

  List<Widget> screens = [
    Options(),
    DoctorScreen(),
    PrescriptionScreen(),
  ];
  void changeBottomNavBar(index) {
    currentIndex = index;

    emit(CartaBottomNavState());
  }
}
