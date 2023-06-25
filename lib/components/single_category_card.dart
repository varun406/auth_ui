import 'package:flutter/material.dart';

class SingleCategoryCards extends StatelessWidget {
  const SingleCategoryCards({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(20))),
      child:
          Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        const Column(
          children: [
            Icon(Icons.car_repair_rounded,
                size: 60, color: Color.fromRGBO(5, 106, 103, 1)),
            Text("Designing",
                style: TextStyle(
                    fontSize: 14, color: Color.fromRGBO(12, 170, 165, 1))),
            Text("12 courses",
                style: TextStyle(fontSize: 10, color: Colors.black)),
          ],
        ),
        SizedBox(
          width: double.infinity,
          height: 30,
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromRGBO(5, 106, 103, 1),
                  foregroundColor: Colors.white),
              onPressed: () {},
              child: const Text("View Courses",
                  style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w400,
                      letterSpacing: 1.2))),
        )
      ]),
    );
  }
}
