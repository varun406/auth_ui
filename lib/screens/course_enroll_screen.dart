import 'package:auth_ui/components/course_enroll_card.dart';
import 'package:flutter/material.dart';

import '../components/header.dart';
import 'home_screen.dart';

class CourseEnrollScreen extends StatelessWidget {
  const CourseEnrollScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 228, 228, 228),
      body: Column(
        children: [
          Header(
            heading: "Category",
            subHeading: "Browse By",
            direction: HomeScreen(),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.67,
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: ListView.separated(
              itemBuilder: (context, index) {
                return CourseEnrollCard();
              },
              itemCount: 10,
              separatorBuilder: (context, index) {
                return SizedBox(
                  height: 20,
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
