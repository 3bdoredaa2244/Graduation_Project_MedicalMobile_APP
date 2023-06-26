import 'package:clickcounter/Screen_5.dart';
import 'package:flutter/material.dart';

class Specialization extends StatefulWidget {
  const Specialization({Key? key}) : super(key: key);

  @override
  State<Specialization> createState() => _SpecializationState();
}

class _SpecializationState extends State<Specialization> {
  var selectedSpecialization;
  var selectedDay = "Saturday";
  var selectedTime = "12:00 PM - 3:00 PM";
  var selectedDoctor = "Mohamed";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        leading: const Icon(Icons.menu),
        title: const Text(
          'Select Appointment',
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        actions: [
          Image(image: AssetImage("images/logo.jpg")),
          const SizedBox(width: 10),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            Text(
              'Select Specialization',
              style: Theme.of(context).textTheme.headline5!.copyWith(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                  ),
            ),
            const SizedBox(height: 10),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: DropdownButton(
                itemHeight: 70,
                elevation: 0,
                underline: const SizedBox(),
                isExpanded: true,
                dropdownColor: Colors.white,
                hint: const Text(
                  'Choose your specialization',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                items: [
                  'Oncology',
                  'Ophthalmology',
                  'Neurology',
                  'Pediatrics',
                  'Dermatology',
                  'Ear, Nose, and Throat',
                ]
                    .map((e) => DropdownMenuItem(
                          child: Text(e),
                          value: e,
                        ))
                    .toList(),
                onChanged: (value) {
                  setState(() {
                    selectedSpecialization = value.toString();
                  });
                },
                value: selectedSpecialization,
                style: Theme.of(context).textTheme.headline6!.copyWith(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ),
            const SizedBox(height: 20),
            Text(
              'Select Day',
              style: Theme.of(context).textTheme.headline5!.copyWith(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                  ),
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: DropdownButton(
                      itemHeight: 70,
                      elevation: 0,
                      underline: const SizedBox(),
                      isExpanded: true,
                      dropdownColor: Colors.white,
                      items: [
                        'Saturday',
                        'Sunday',
                        'Monday',
                        'Tuesday',
                        'Wednesday',
                        'Thursday',
                        'Friday',
                      ]
                          .map((e) => DropdownMenuItem(
                                child: Text(e),
                                value: e,
                              ))
                          .toList(),
                      onChanged: (value) {
                        setState(() {
                          selectedDay = value.toString();
                        });
                      },
                      value: selectedDay,
                      style: Theme.of(context).textTheme.headline6!.copyWith(
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Text(
              'Select Time',
              style: Theme.of(context).textTheme.headline5!.copyWith(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                  ),
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: DropdownButton(
                      itemHeight: 70,
                      elevation: 0,
                      underline: const SizedBox(),
                      isExpanded: true,
                      dropdownColor: Colors.white,
                      items: [
                        '12:00 PM - 3:00 PM',
                        '3:00 PM - 6:00 PM',
                        '6:00 PM - 9:00 PM',
                        '9:00 PM - 12:00 AM'
                      ]
                          .map((e) => DropdownMenuItem(
                                child: Text(e),
                                value: e,
                              ))
                          .toList(),
                      onChanged: (value) {
                        setState(() {
                          selectedTime = value.toString();
                        });
                      },
                      value: selectedTime,
                      style: Theme.of(context).textTheme.headline6!.copyWith(
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Text(
              'Select Doctor',
              style: Theme.of(context).textTheme.headline5!.copyWith(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                  ),
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: DropdownButton(
                      itemHeight: 70,
                      elevation: 0,
                      underline: const SizedBox(),
                      isExpanded: true,
                      dropdownColor: Colors.white,
                      items: [
                        'Mohamed',
                        'Ali',
                        'Abdelrhman',
                        'Moustfa',
                        'Mona',
                      ]
                          .map((e) => DropdownMenuItem(
                                child: Text(e),
                                value: e,
                              ))
                          .toList(),
                      onChanged: (value) {
                        setState(() {
                          selectedDoctor = value.toString();
                        });
                      },
                      value: selectedDoctor,
                      style: Theme.of(context).textTheme.headline6!.copyWith(
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Appointment()),
                  );
                },
                child: const Text(
                  'BOOK APPOINTMENT',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  primary: Colors.blue,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 40,
                    vertical: 15,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
