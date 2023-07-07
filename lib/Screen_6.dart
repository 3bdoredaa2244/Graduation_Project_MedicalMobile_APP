import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rosheta/recordCubit/recordCubit.dart';
import 'package:rosheta/recordCubit/recordStates.dart';

import 'models/hystory.dart';

class MedicineRecord extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => MedicalCubit()..getMedical(),
        child: BlocConsumer<MedicalCubit, MedicalStates>(
            listener: (context, state) {},
            builder: (context, state) {
              var cubit = MedicalCubit.get(context);

              var mm = MedicalCubit.get(context).medicalmodel;
              HistoryModel? model;

              return ConditionalBuilder(
                condition: state is MedicalSuccess,
                builder: (context) => SafeArea(
                    child: Scaffold(
                  appBar: AppBar(
                    backgroundColor: Colors.white,
                    title: Text(
                      "CDCE",
                      style: TextStyle(color: Colors.black),
                    ),
                    leading: Container(
                      child: Image.asset('assets/images/medical.png'),
                    ),
                    elevation: 0,
                  ),
                  body: Column(
                    children: [
                      Text(
                        "Medical Record",
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
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
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "patientId",
                                      style: const TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      mm!.patientid,
                                      style: const TextStyle(
                                        fontSize: 18,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 30,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Previous Medical Conditions",
                                      style: const TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      mm.condition,
                                      style: const TextStyle(
                                        fontSize: 18,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 30,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Previous Surgeries",
                                      style: const TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      mm.Surgeries,
                                      style: const TextStyle(
                                        fontSize: 18,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 30,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Hospital Referrals",
                                      style: const TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      mm.hospitalizations,
                                      style: const TextStyle(
                                        fontSize: 18,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 30,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Father's Medical History",
                                      style: const TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      mm.fatherMedicalHistory,
                                      style: const TextStyle(
                                        fontSize: 18,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 30,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Mother's Medical History",
                                      style: const TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      mm.motherMedicalHistory,
                                      style: const TextStyle(
                                        fontSize: 18,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 30,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Grandfather's Medical History",
                                      style: const TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      mm.grandfatherMedicalHistory,
                                      style: const TextStyle(
                                        fontSize: 18,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 30,
                                ),
                              ]),
                        ),
                      )
                    ],
                  ),
                )),
                fallback: (context) =>
                    Center(child: CircularProgressIndicator()),
              );
            }));
  }
}


//             const SizedBox(height: 20),
//             Text(
//               "Medical History",
//               style: Theme.of(context).textTheme.headline5!.copyWith(
//                     color: Colors.blue,
//                     fontWeight: FontWeight.bold,
//                   ),
//             ),
//             const SizedBox(height: 20),
//             Card(
//               elevation: 2,
//               shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(10),
//               ),
//               child: Padding(
//                 padding: const EdgeInsets.all(15),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     _buildInfoRow("Previous Medical Conditions", "None"),
//                     const SizedBox(height: 10),
//                     _buildInfoRow("Previous Surgeries", "None"),
//                     const SizedBox(height: 10),
//                     _buildInfoRow("Hospital Referrals", "None"),
//                     const SizedBox(height: 10),
//                     _buildInfoRow("Father's Medical History", "Hypertension"),
//                     const SizedBox(height: 10),
//                     _buildInfoRow("Mother's Medical History", "Diabetes"),
//                     const SizedBox(height: 10),
//                     _buildInfoRow(
//                         "Grandfather's Medical History", "Heart Disease"),
//                     const SizedBox(height: 10),
//                     _buildInfoRow("Sensitivities", "None"),
//                     const SizedBox(height: 10),
//                     _buildInfoRow("Medications",
//                         "Lisinopril (10mg) for blood pressure"),
//                     const SizedBox(height: 10),
//                     _buildInfoRow(
//                         "Vaccinations", "Flu vaccine received annually"),
//                   ],
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     ),
//   );
// }

// Row _buildInfoRow(String key, String value) {
//   return Row(
//     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//     children: [
//       Text(
//         key,
//         style: const TextStyle(
//           fontSize: 18,
//           fontWeight: FontWeight.bold,
//         ),
//       ),
//       Text(
//         value,
//         style: const TextStyle(
//           fontSize: 18,
//         ),
//       ),
//     ],
//   );
// }
//}
