import 'package:auth_ui/components/cards.dart';
import 'package:auth_ui/components/header.dart';
import 'package:auth_ui/screens/home_screen.dart';
import 'package:flutter/material.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 228, 228, 228),
      body: Column(
        children: [
          Header(
            heading: "Designing",
            subHeading: "Category",
            direction: HomeScreen(),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.8,
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: GridView.extent(
              childAspectRatio: 4 / 5,
              maxCrossAxisExtent: 200,
              crossAxisSpacing: 11,
              mainAxisSpacing: 11,
              children: [
                DetailCourseCards(),
                DetailCourseCards(),
                DetailCourseCards(),
                DetailCourseCards(),
                DetailCourseCards(),
                DetailCourseCards(),
                DetailCourseCards(),
                DetailCourseCards(),
                DetailCourseCards(),
                DetailCourseCards(),
                DetailCourseCards(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
