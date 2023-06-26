import 'dart:convert';

import 'package:clickcounter/Screen_3.dart';
import 'package:clickcounter/regster.dart';
import 'package:flutter/material.dart';
import 'package:clickcounter/main.dart';
import 'package:clickcounter/Screen_4.dart';
import 'package:clickcounter/Screen_5.dart';
import 'package:clickcounter/Screen_6.dart';
import 'package:clickcounter/Screen_7.dart';
import 'package:clickcounter/Screen_8.dart';
import 'package:http/http.dart' as http;

class LoginScreen extends StatelessWidget {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  static const String _title = 'CDCE';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(_title),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Container(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Login',
              style: TextStyle(
                fontSize: 40.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 40.0,
            ),
            TextFormField(
              controller: emailController,
              keyboardType: TextInputType.emailAddress,
              onFieldSubmitted: (String value) {
                print(value);
              },
              onChanged: (String value) {
                print(value);
              },
              decoration: InputDecoration(
                labelText: 'Email Address',
                prefixIcon: Icon(
                  Icons.email,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
            ),
            const SizedBox(
              height: 15.0,
            ),
            TextFormField(
              controller: passwordController,
              keyboardType: TextInputType.visiblePassword,
              obscureText: true,
              onFieldSubmitted: (String value) {
                print(value);
              },
              onChanged: (String value) {
                print(value);
              },
              decoration: InputDecoration(
                labelText: 'Password',
                prefixIcon: Icon(
                  Icons.lock,
                ),
                suffixIcon: GestureDetector(
                  onTap: () {},
                  child: Icon(
                    Icons.remove_red_eye,
                  ),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
            ),
            const SizedBox(
              height: 40.0,
            ),
            ElevatedButton(
              child: const Text(
                'LOGIN',
                style: TextStyle(fontSize: 20),
              ),
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(double.infinity, 56),
                primary: Colors.blue,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
              onPressed: () {
                Future<void> _login() async {
                  final email = emailController.text;
                  final password = passwordController.text;
                  final url = Uri.parse('https://example.com/api/login');

                  try {
                    final response = await http.post(
                      url,
                      headers: {'Content-Type': 'application/json'},
                      body: json.encode({'email': email, 'password': password}),
                    );

                    if (response.statusCode == 200) {
                      // TODO: Handle successful login.
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HomePage()),
                      );
                    } else {
                      // TODO: Handle failed login.
                      showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                          title: const Text('Login Failed'),
                          content: const Text('Invalid email or password.'),
                          actions: [
                            TextButton(
                              onPressed: () => Navigator.pop(context),
                              child: const Text('OK'),
                            ),
                          ],
                        ),
                      );
                    }
                  } catch (error) {
                    // TODO: Handle the request error.
                    showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        title: const Text('Login Failed'),
                        content:
                            const Text('An error occurred while logging in.'),
                        actions: [
                          TextButton(
                            onPressed: () => Navigator.pop(context),
                            child: const Text('OK'),
                          ),
                        ],
                      ),
                    );
                  }
                }
              },
            ),
            const SizedBox(
              height: 20.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Don\'t have an account?',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => RegistrationScreen()),
                    );
                  },
                  child: const Text(
                    'Register Now',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
