import 'package:flutter/material.dart';

class MedicineRecord extends StatelessWidget {
  const MedicineRecord({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {},
        ),
        title: const Text(
          'Medicine Record',
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              Text(
                "Patient Information",
                style: Theme.of(context).textTheme.headline5!.copyWith(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    ),
              ),
              const SizedBox(height: 20),
              Card(
                elevation: 2,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildInfoRow("Name", "Mohamed"),
                      const SizedBox(height: 10),
                      _buildInfoRow("Blood Type", "O+"),
                      const SizedBox(height: 10),
                      _buildInfoRow("Age", "32"),
                      const SizedBox(height: 10),
                      _buildInfoRow("Gender", "Male"),
                      const SizedBox(height: 10),
                      _buildInfoRow("Height", "175 cm"),
                      const SizedBox(height: 10),
                      _buildInfoRow("Weight", "70 kg"),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Text(
                "Medical History",
                style: Theme.of(context).textTheme.headline5!.copyWith(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    ),
              ),
              const SizedBox(height: 20),
              Card(
                elevation: 2,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildInfoRow("Previous Medical Conditions", "None"),
                      const SizedBox(height: 10),
                      _buildInfoRow("Previous Surgeries", "None"),
                      const SizedBox(height: 10),
                      _buildInfoRow("Hospital Referrals", "None"),
                      const SizedBox(height: 10),
                      _buildInfoRow("Father's Medical History", "Hypertension"),
                      const SizedBox(height: 10),
                      _buildInfoRow("Mother's Medical History", "Diabetes"),
                      const SizedBox(height: 10),
                      _buildInfoRow("Grandfather's Medical History", "Heart Disease"),
                      const SizedBox(height: 10),
                      _buildInfoRow("Sensitivities", "None"),
                      const SizedBox(height: 10),
                      _buildInfoRow("Medications", "Lisinopril (10mg) for blood pressure"),
                      const SizedBox(height: 10),
                      _buildInfoRow("Vaccinations", "Flu vaccine received annually"),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Row _buildInfoRow(String key, String value) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          key,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          value,
          style: const TextStyle(
            fontSize: 18,
          ),
        ),
      ],
    );
  }
}