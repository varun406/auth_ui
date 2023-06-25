import 'package:auth_ui/components/header.dart';
import 'package:auth_ui/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../components/experts_card.dart';
import '../views/card_section.dart';
import 'category_screen.dart';

class CourseDetail extends StatelessWidget {
  const CourseDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 228, 228, 228),
      body: Column(children: [
        Header(
            heading: "Grahphics Designing",
            subHeading: "Courses",
            direction: HomeScreen()),
        Container(
          height: 100,
          padding: EdgeInsets.all(20),
          color: Colors.white,
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text("Application Deadline"),
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                      decoration: BoxDecoration(
                          color: Colors.greenAccent,
                          borderRadius: BorderRadius.circular(10)),
                      child: Text("23 May, 2023",
                          style: TextStyle(color: Colors.black)),
                    )
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text("Cohort start on"),
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                      decoration: BoxDecoration(
                          color: Colors.greenAccent,
                          borderRadius: BorderRadius.circular(10)),
                      child: Text("May 6th, 2023",
                          style: TextStyle(color: Colors.black)),
                    )
                  ],
                ),
              ]),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              "About Course",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Color.fromRGBO(5, 106, 103, 1)),
            ),
            Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
              style: TextStyle(
                  fontSize: 14,
                  color: const Color.fromARGB(255, 107, 107, 107)),
            ),
            SizedBox(
              height: 10,
            ),
          ]),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CardSection(
              sectionTitle: "Mentored by",
              card: const ExpertsCard(),
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Container(
            color: Colors.white,
            child: Padding(
              padding: EdgeInsets.only(left: 20, top: 10, bottom: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Worked with",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Color.fromRGBO(5, 106, 103, 1)),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(children: [
                      SvgPicture.asset(
                        "assets/images/zoho.svg",
                        width: 80,
                        height: 80,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      SvgPicture.asset("assets/images/buzzfeed.svg",
                          width: 80, height: 80),
                      SizedBox(
                        width: 20,
                      ),
                      SvgPicture.asset("assets/images/zoho.svg",
                          width: 80, height: 80),
                      SizedBox(
                        width: 20,
                      ),
                      SvgPicture.asset("assets/images/buzzfeed.svg",
                          width: 80, height: 80),
                      SizedBox(
                        width: 20,
                      ),
                      SvgPicture.asset("assets/images/buzzfeed.svg",
                          width: 80, height: 80),
                      SizedBox(
                        width: 20,
                      ),
                      SvgPicture.asset("assets/images/zoho.svg",
                          width: 80, height: 80),
                      SizedBox(
                        width: 20,
                      ),
                      SvgPicture.asset("assets/images/buzzfeed.svg",
                          width: 80, height: 80),
                    ]),
                  )
                ],
              ),
            ))
      ]),
    );
  }
}
