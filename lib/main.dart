import 'package:clickcounter/Screen_1.dart';
import 'package:clickcounter/Screen_5.dart';
import 'package:clickcounter/Screen_6.dart';
import 'package:clickcounter/Screen_7.dart';
import 'package:clickcounter/dio/diohelper.dart';
import 'package:flutter/material.dart';

import 'Screen_4.dart';
import 'Screen_8.dart';

void main() {
  DioHelper.init();
  
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MedicineRecord(),
      //     routes: {
      //     'Screen_3':(context){
      //      return MyApp();
      // },
      //    },
    );
  }
}
