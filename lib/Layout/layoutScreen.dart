import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../Login/cubit/login_cubit.dart';
import 'layoutCubit.dart';
import 'layoutStates.dart';

class layoutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LayoutCubit(),
      child: BlocConsumer<LayoutCubit, LayoutStates>(
        listener: (context, state) {},
        builder: (context, state) {
          return BlocConsumer<LayoutCubit, LayoutStates>(
            listener: (context, state) {
              // TODO: implement listener
            },
            builder: (context, state) {
              var layoutCubit = LayoutCubit.get(context);
              return Scaffold(
                body: layoutCubit.screens[layoutCubit.currentIndex],
                bottomNavigationBar: BottomNavigationBar(
                    onTap: (index) {
                      layoutCubit.changeBottomNavBar(index);
                    },
                    currentIndex: layoutCubit.currentIndex,
                    items: [
                      BottomNavigationBarItem(
                        icon: Icon(Icons.record_voice_over_outlined),
                        label: 'Appointment',
                      ),
                      BottomNavigationBarItem(
                        icon: Icon(Icons.person_3_outlined),
                        label: 'Doctor',
                      ),
                      BottomNavigationBarItem(
                        icon: Icon(Icons.list),
                        label: 'PrescriptionScreen',
                      ),
                    ]),
              );
            },
          );
        },
      ),
    );
  }
}
