import 'package:flutter/material.dart';

class PrescriptionTable extends StatelessWidget {
  final List<Prescription> prescriptionData;

  const PrescriptionTable({
    Key? key,
    required this.prescriptionData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.grey[300],
            border: Border.all(width: 1.0),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'الروجتة',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
                color: Colors.black,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            color: Colors.grey[400],
            border: Border.all(width: 1.0),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'اسم الدواء',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                        color: Colors.black),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'الكمية',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                        color: Colors.black),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'الطريقة',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                        color: Colors.black),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'الجرعة',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                        color: Colors.black),
                  ),
                ),
              ),
            ],
          ),
        ),
        for (var prescription in prescriptionData) ...[
          for (var drug in prescription.drugDetails)
            Container(
              decoration: BoxDecoration(
                border: Border.all(width: 1.0),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    flex: 2,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(drug.drugName),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(drug.amount),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(drug.route),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(drug.frequency),
                    ),
                  ),
                ],
              ),
            ),
          Container(
            decoration: BoxDecoration(
              color: Colors.grey[200],
              border: Border.all(width: 1.0),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'ملاحظات:',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                        color: Colors.black),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    prescription.prescription.notes,
                    style: TextStyle(fontSize: 16.0, color: Colors.black),
                  ),
                ),
              ],
            ),
          ),
        ],
      ],
    );
  }
}

class Prescription {
  final PrescriptionDetails prescription;
  final List<Drug> drugDetails;

  const Prescription({
    required this.prescription,
    required this.drugDetails,
  });
}

class PrescriptionDetails {
  final String notes;

  const PrescriptionDetails({
    required this.notes,
  });
}

class Drug {
  final String drugName;
  final String amount;
  final String route;
  final String frequency;

  const Drug({
    required this.drugName,
    required this.amount,
    required this.route,
    required this.frequency,
  });
}
