import 'package:flutter/material.dart';

import '../components/header.dart';
import '../components/single_category_card.dart';
import 'home_screen.dart';

class SpecificCategoryScreen extends StatelessWidget {
  const SpecificCategoryScreen({super.key});

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
            height: MediaQuery.of(context).size.height * 0.8,
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: GridView.extent(
              // childAspectRatio: 4 / 6,
              childAspectRatio: 3 / 3,
              maxCrossAxisExtent: 200,
              crossAxisSpacing: 11,
              mainAxisSpacing: 11,
              children: [
                SingleCategoryCards(),
                SingleCategoryCards(),
                SingleCategoryCards(),
                SingleCategoryCards(),
                SingleCategoryCards(),
                SingleCategoryCards(),
                SingleCategoryCards(),
                SingleCategoryCards(),
                SingleCategoryCards(),
                SingleCategoryCards(),
                SingleCategoryCards(),
                SingleCategoryCards(),
                SingleCategoryCards(),
                SingleCategoryCards(),
                SingleCategoryCards(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
