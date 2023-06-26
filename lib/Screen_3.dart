import 'package:flutter/material.dart';
import 'package:clickcounter/QR_Code.dart';
import 'package:clickcounter/Screen_4.dart';
import 'package:clickcounter/Screen_5.dart';
import 'package:clickcounter/Screen_6.dart';
import 'package:clickcounter/Screen_7.dart';
import 'package:clickcounter/Screen_8.dart';

void main() => runApp(const Options());

class Options extends StatelessWidget {
  const Options({Key? key}) : super(key: key);

  static const String _title = 'CDCE';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Roboto',
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            _title,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),
          ),
        ),
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
    return Container(
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          const SizedBox(
            height: 30,
          ),
          const Text(
            'Welcome to CDCE',
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
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
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
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
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
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
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
                  builder: (context) => PrescriptionTable(prescriptionData: []),
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
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
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
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
