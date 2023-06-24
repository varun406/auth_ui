import 'package:auth_ui/components/category_card.dart';
import 'package:auth_ui/components/course_card.dart';
import 'package:auth_ui/components/experts_card.dart';
import 'package:auth_ui/views/card_section.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text(
                        "Good Morning",
                        style: TextStyle(color: Colors.green[500]),
                      ),
                      const Text(
                        "Hi User",
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.notifications, color: Colors.green[500]))
                ],
              ),
            ),
            CardSection(
              card: const CategoryCard(),
              sectionTitle: "Categories",
            ),
            const SizedBox(
              height: 15,
            ),
            CardSection(
              card: const ExpertsCard(),
              sectionTitle: "Learn from Top 1% Industry Experts",
            ),
            CardSection(
              card: const CourseCard(),
              sectionTitle: "Popular Course",
            )
          ],
        ),
      ),
    );
  }
}
