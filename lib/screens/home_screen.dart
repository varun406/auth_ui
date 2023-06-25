import 'package:auth_ui/components/category_card.dart';
import 'package:auth_ui/components/course_card.dart';
import 'package:auth_ui/components/experts_card.dart';
import 'package:auth_ui/screens/category_screen.dart';
import 'package:auth_ui/screens/course_detail.dart';
import 'package:auth_ui/screens/specfic_category_screen.dart';
import 'package:auth_ui/views/card_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../components/faq_card.dart';
import '../components/learning-list.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static final learning = [
    {
      "title": "Kickoff week",
      "content": [
        "How to make the most out of this 8 week program",
        "Know the people you are learning with through ice-breaker sessions",
        "Ways to Interact & network in the community to learn with some awesome people",
        "How to make the most out of this 8 week program",
      ]
    },
    {
      "title": "Kickoff week",
      "content": [
        "How to make the most out of this 8 week program",
        "Know the people you are learning with through ice-breaker sessions",
        "Ways to Interact & network in the community to learn with some awesome people",
        "How to make the most out of this 8 week program",
      ]
    },
    {
      "title": "Kickoff week",
      "content": [
        "How to make the most out of this 8 week program",
        "Know the people you are learning with through ice-breaker sessions",
        "Ways to Interact & network in the community to learn with some awesome people",
        "How to make the most out of this 8 week program",
      ]
    },
  ];

  @override
  Widget build(BuildContext context) {
    // print(learning);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
                seeAllRedirect: SpecificCategoryScreen(),
                cardRedirect: CourseDetail()),
            const SizedBox(
              height: 15,
            ),
            CardSection(
                card: const ExpertsCard(),
                sectionTitle: "Learn from Top 1% Industry Experts",
                seeAllRedirect: CategoryScreen(),
                cardRedirect: CourseDetail()),
            const SizedBox(
              height: 15,
            ),
            CardSection(
              card: const CourseCard(),
              sectionTitle: "Popular Course",
              seeAllRedirect: CategoryScreen(),
              cardRedirect: CourseDetail(),
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text("Here's what you'll learn in the program",
                  style: const TextStyle(fontSize: 15)),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                  children: learning
                      .map((list) => LearningList(list: list))
                      .toList()),
            ),
            Container(
                padding: EdgeInsets.only(left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Tools you'll learn in this program",
                        style: const TextStyle(fontSize: 15)),
                    SizedBox(
                      height: 10,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(children: [
                        Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 10, vertical: 30),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color.fromRGBO(5, 106, 103, 1)),
                          child: Column(children: [
                            SvgPicture.asset(
                              "assets/images/adobe.svg",
                              color: Colors.white,
                              width: 40,
                              height: 40,
                            ),
                            Text(
                              "Adobe Photoshop",
                              style: TextStyle(color: Colors.white),
                            )
                          ]),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 10, vertical: 30),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color.fromRGBO(5, 106, 103, 1)),
                          child: Column(children: [
                            SvgPicture.asset(
                              "assets/images/adobe.svg",
                              color: Colors.white,
                              width: 40,
                              height: 40,
                            ),
                            Text(
                              "Adobe Photoshop",
                              style: TextStyle(color: Colors.white),
                            )
                          ]),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 10, vertical: 30),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color.fromRGBO(5, 106, 103, 1)),
                          child: Column(children: [
                            SvgPicture.asset(
                              "assets/images/adobe.svg",
                              color: Colors.white,
                              width: 40,
                              height: 40,
                            ),
                            Text(
                              "Adobe Photoshop",
                              style: TextStyle(color: Colors.white),
                            )
                          ]),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 10, vertical: 30),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color.fromRGBO(5, 106, 103, 1)),
                          child: Column(children: [
                            SvgPicture.asset(
                              "assets/images/adobe.svg",
                              color: Colors.white,
                              width: 40,
                              height: 40,
                            ),
                            Text(
                              "Adobe Photoshop",
                              style: TextStyle(color: Colors.white),
                            )
                          ]),
                        ),
                      ]),
                    )
                  ],
                )),
            Container(
                padding: EdgeInsets.all(20),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("FAQs: Here 's everything you may ask...",
                          style: const TextStyle(fontSize: 15)),
                      SizedBox(
                        height: 10,
                      ),
                      FaqCard(),
                      FaqCard(),
                      FaqCard(),
                      FaqCard(),
                      FaqCard(),
                    ]))
          ],
        ),
      ),
    );
  }
}
