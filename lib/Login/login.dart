import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rosheta/Doctors.dart';

import '../Layout/layoutScreen.dart';
import '../components.dart';
import 'cubit/login_cubit.dart';
import 'cubit/login_states.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    final _formfield = GlobalKey<FormState>();
    var emailController = TextEditingController();
    var passwordController = TextEditingController();
    return BlocProvider(
      create: (context) => LoginCubit(),
      child: BlocConsumer<LoginCubit, LoginStates>(
        listener: (context, state) {
          if (state is! LoginSuccessState) {
            navigateTo(context, layoutScreen());
          }
          // } else if (state is! LoginErrorState) {
          //   navigateTo(context, LoginScreen());
          // }
          // if (state is LoginSuccessState) {
          //   navigateTo(context, layoutScreen());
          // } else {
          //   navigateTo(context, LoginScreen());

          //   print("failed to login");
          // }
        },
        builder: (context, state) {
          return Scaffold(
            body: SingleChildScrollView(
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Form(
                    key: _formfield,
                    child: Column(children: [
                      // Text(token.toString()),
                      Image.asset(
                        'assets/images/medical.png',
                        width: 250,
                        height: 250,
                      ),
                      Text(
                        "Login",
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        controller: emailController,
                        keyboardType: TextInputType.emailAddress,
                        onFieldSubmitted: (String value) {},
                        validator: (value) {
                          // bool emailvalid = RegExp(
                          //         r"^[a-zA-Z0-9.a-zA-z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\/[a-zA-Z]+")
                          //     .hasMatch(value!);
                          if (value!.isEmpty) {
                            return "please enter your email Address";
                          }
                          // // else if (!emailvalid) {
                          // //   return "enter valid email";
                          // // }
                          // return null;
                        },
                        decoration: InputDecoration(
                          labelText: 'user name',
                          contentPadding:
                              EdgeInsets.symmetric(vertical: 5, horizontal: 30),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30)),
                          prefixIcon: Icon(
                            Icons.email,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      TextFormField(
                        controller: passwordController,

                        keyboardType: TextInputType
                            .visiblePassword, //make the @ sign visible in the keyboard during writing the email
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "please enter your password";
                          }
                          //return null;
                        },
                        onFieldSubmitted: (value) {
                          if (_formfield.currentState!.validate()) {
                            LoginCubit.get(context).userLogin(
                                email: emailController.text,
                                password: passwordController.text);
                          }
                        },
                        decoration: InputDecoration(
                          labelText: 'Password',
                          contentPadding:
                              EdgeInsets.symmetric(vertical: 5, horizontal: 30),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30)),
                          prefixIcon: Icon(
                            Icons.lock,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      ConditionalBuilder(
                        condition: state is! LoginLoadingState,
                        builder: (context) => Column(
                          children: [
                            ElevatedButton(
                                onPressed: () {
                                  if (_formfield.currentState!.validate()) {
                                    //verify backend
                                    LoginCubit.get(context).userLogin(
                                        email: emailController.text,
                                        password: passwordController.text);
                                  }
                                },
                                child: Text(
                                  "submit",
                                )),
                            SizedBox(
                              height: 30,
                            ),
                          ],
                        ),
                        fallback: (context) =>
                            Center(child: CircularProgressIndicator()),
                      ),

                      ElevatedButton(
                          onPressed: () {
                            // navigateTo(context, SignupScreen());
                          },
                          child: Text(
                            "signup",
                          )),
                    ]),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
