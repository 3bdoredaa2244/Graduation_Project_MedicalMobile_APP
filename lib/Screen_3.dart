import 'package:clickcounter/QR_Code.dart';
import 'package:clickcounter/Screen_4.dart';
import 'package:clickcounter/Screen_5.dart';
import 'package:clickcounter/Screen_7.dart';
import 'package:clickcounter/Screen_8.dart';
import 'package:flutter/material.dart';

import 'Screen_6.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'CDCE';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: const Text(_title)),
        body: const MyStatefulWidget(),
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30),
      child: Column(
        children: <Widget>[
          const SizedBox(
            height: 30,
          ),
          const Text(
            'CDCE',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w500,
              fontSize: 30,
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Specialization()),
              );
              print(nameController.text);
              print(passwordController.text);
            },
            child: const Text(
              'Make An Appointment',
              style: TextStyle(fontSize: 20),
            ),
            style: ElevatedButton.styleFrom(
              minimumSize: const Size(double.infinity, 80),
              primary: Colors.blue,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Appointment()),
              );
              print(nameController.text);
              print(passwordController.text);
            },
            child: const Text(
              'Check Appointment Status',
              style: TextStyle(fontSize: 20),
            ),
            style: ElevatedButton.styleFrom(
              minimumSize: const Size(double.infinity, 80),
              primary: Colors.blue,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MedicineRecord()),
              );
            },
            child: const Text(
              'Check Medical Record',
              style: TextStyle(fontSize: 20),
            ),
            style: ElevatedButton.styleFrom(
              minimumSize: const Size(double.infinity, 80),
              primary: Colors.blue,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      PrescriptionTable(prescriptionData: []),
                ),
              );
              print(nameController.text);
              print(passwordController.text);
            },
            child: const Text(
              'Check Prescription Status',
              style: TextStyle(fontSize: 20),
            ),
            style: ElevatedButton.styleFrom(
              minimumSize: const Size(double.infinity, 80),
              primary: Colors.blue,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => QRCodeScreen()),
              );
            },
            child: const Text(
              'Check QR CodeScreen',
              style: TextStyle(fontSize: 20),
            ),
            style: ElevatedButton.styleFrom(
              minimumSize: const Size(double.infinity, 80),
              primary: Colors.blue,
            ),
          ),
        ],
      ),
    );
  }
}