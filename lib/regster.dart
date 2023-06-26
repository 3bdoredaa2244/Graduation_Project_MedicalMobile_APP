import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
class RegistrationScreen extends StatelessWidget {
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Registration'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: firstNameController,
              decoration: InputDecoration(
                labelText: 'First Name',
              ),
            ),
            TextField(
              controller: lastNameController,
              decoration: InputDecoration(
                labelText: 'Last Name',
              ),
            ),
            TextField(
              controller: usernameController,
              decoration: InputDecoration(
                labelText: 'Username',
              ),
            ),
            TextField(
              controller: emailController,
              decoration: InputDecoration(
                labelText: 'Email',
              ),
            ),
            TextField(
              controller: passwordController,
              decoration: InputDecoration(
                labelText: 'Password',
              ),
              obscureText: true,
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                Future<void> registerUser(String firstName, String lastName, String email, String password) async {
  // Create a new user registration data object.
  final userData = {
    'firstName': firstName,
    'lastName': lastName,
    'email': email,
    'password': password,
  };

  // Send a POST request to register the new user.
  final response = await http.post(
    Uri.parse('http://localhost:7175/api/Auth/Register'),
    headers: {'Content-Type': 'application/json'},
    body: jsonEncode(userData),
  );

  // Check if the request was successful.
  if (response.statusCode == 200) {
    // Registration was successful.
    print('Registration successful');
  } else {
    // Registration failed.
    print('Registration failed');
  }
}
                // TODO: Handle registration logic.
              },
              child: Text('Register'),
            ),
          ],
        ),
      ),
    );
  }
}
