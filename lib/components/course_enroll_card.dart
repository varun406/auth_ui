import 'package:flutter/material.dart';

class CourseEnrollCard extends StatelessWidget {
  const CourseEnrollCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Color.fromRGBO(5, 106, 103, 1)),
      child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    backgroundColor: Colors.greenAccent),
                child: Text("Batch Class")),
            Container(
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 228, 226, 226),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Text(
                "30 students batch unit",
                style: TextStyle(fontSize: 8, color: Colors.black),
              ),
            )
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Graphics Designing",
              style: TextStyle(fontSize: 22, color: Colors.white),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Text(
                      "₹2999",
                      style: TextStyle(fontSize: 25, color: Colors.yellow),
                    )),
                SizedBox(
                  width: 10,
                ),
                Text("₹3999",
                    style: TextStyle(fontSize: 25, color: Colors.white)),
              ],
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        SizedBox(
          width: 200,
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(backgroundColor: Colors.yellow),
            child: Text("Enroll Now",
                style: TextStyle(fontSize: 16, color: Colors.black)),
          ),
        )
      ]),
    );
  }
}
