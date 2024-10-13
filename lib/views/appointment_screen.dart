import 'package:canyfix/viewmodels/appointemt_viewmodel.dart';
import 'package:canyfix/widgets/appointment_detail_widget.dart';
import 'package:canyfix/widgets/appointment_details_widget.dart';
import 'package:canyfix/widgets/custom_button.dart';
import 'package:canyfix/widgets/experience_widget.dart';
import 'package:canyfix/widgets/star_widget.dart';
import 'package:canyfix/widgets/track_appointment_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AppointmentScreen extends StatelessWidget {
  const AppointmentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AppointmentViewModel(),
      child: SafeArea(
        child: Scaffold(
          backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 12,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Container(
                        height: 36,
                        width: 36,
                        decoration: const BoxDecoration(
                            color: Color.fromRGBO(255, 255, 255, 1),
                            shape: BoxShape.circle,
                            boxShadow: [
                              BoxShadow(
                                color: Color.fromRGBO(0, 0, 0, 0.1),
                                spreadRadius: 0,
                                blurRadius: 20,
                                offset: Offset(0, 8),
                              )
                            ]),
                        child: IconButton(
                          icon: const Icon(
                            Icons.arrow_back,
                            size: 20,
                            color: Colors.black,
                          ),
                          onPressed: () {
                            // Handle back button
                          },
                        ),
                      ),
                    ),
                    const Spacer(),
                    const Text(
                      'Appointments',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const Spacer(),
                    const Spacer(),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const AppointmentDetailWidget(),
                const SizedBox(
                  height: 10,
                ),
                const TrackAppointmentWidget(),
                const SizedBox(
                  height: 10,
                ),
                const ExperienceWidget(),
                const SizedBox(
                  height: 10,
                ),
                const AppointmentDetailsWidget(),
                const StarRatingWidget(),
                const SizedBox(
                  height: 50,
                ),
                const CustomButton(text: "Raise Complain"),
                const SizedBox(
                  height: 50,
                ),
              ],
            ),
          ),
          bottomNavigationBar: const Padding(
            padding: EdgeInsets.symmetric(vertical: 12.0),
            child: CustomButton(
              text: "Back",
            ),
          ),
        ),
      ),
    );
  }
}
