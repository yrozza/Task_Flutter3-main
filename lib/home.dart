import 'package:doctor_app/widget/hospital.dart';
import 'package:doctor_app/widget/near_doctor.dart';

import './widget/doctor.dart';
import './widget/header.dart';
import './widget/input.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Column(
            children: [
              const HeaderWidget(),
              const DoctorWidget(),
              const InputWidget(),
              Hospital(),
              Container(
                margin: EdgeInsets.only(
                  right: MediaQuery.of(context).size.width * 0.61,
                ),
                padding: const EdgeInsets.only(top: 16.0, bottom: 8.0),
                child: Text(
                  "Near Doctor",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),

              const DoctorCard(
                name: 'Dr. Joseph Brostito',
                specialty: 'Dental Specialist',
                distance: '1.2 KM',
                rating: 4.8,
                reviews: 120,
                openingTime: '17.00',
                imagePath: 'assets/images/image.png',
              ),
              const DoctorCard(
                name: 'Dr. Imran Syahir',
                specialty: 'General Doctor',
                distance: '1.2 KM',
                rating: 5,
                reviews: 100,
                openingTime: '20.00',
                imagePath: 'assets/images/profile.png',
              ),
              // Add more DoctorCards here as needed
            ],
          ),
        ),
      ),
    );
  }
}
