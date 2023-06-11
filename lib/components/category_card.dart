import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(color: Colors.grey, blurRadius: 2, spreadRadius: 1)
      ], color: Colors.white54, borderRadius: BorderRadius.circular(15)),
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircleAvatar(
            child: Icon(Icons.build_rounded),
          ),
          Text(
            "Designing",
            style: TextStyle(fontWeight: FontWeight.w500),
          ),
          Text(
            "24 courses",
            style: TextStyle(fontWeight: FontWeight.w400),
          )
        ],
      ),
    );
  }
}
