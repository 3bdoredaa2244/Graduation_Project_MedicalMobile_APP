import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../dio/diohelper.dart';
import '../../models/loginModel.dart';
import 'login_states.dart';

class LoginCubit extends Cubit<LoginStates> {
  LoginCubit() : super(LoginInitialState());
  static LoginCubit get(context) => BlocProvider.of(context);

  late LoginModel loginmodel;

  void userLogin({
    required String email,
    required String password,
  }) {
    emit(LoginLoadingState());
    DioHelper.postData(
      url: 'https://localhost:7175/api/Auth/Login',
      data: {
        'username': email,
        'password': password,
      },
    ).then((value) {
      print(value.data);
      loginmodel = LoginModel.fromJson(value.data);
      print(value.data['message']);

      emit(LoginSuccessState());
    }).catchError((error) {
      print(error.toString());
      emit(LoginErrorState(error.toString()));
      print(error.toString());
    });
  }
}
