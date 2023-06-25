import 'package:flutter/material.dart';

class DetailCourseCards extends StatelessWidget {
  const DetailCourseCards({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(12))),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.network(
                "https://images.unsplash.com/photo-1501504905252-473c47e087f8?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTR8fGxlYXJuaW5nfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60",
                fit: BoxFit.cover,
                width: double.infinity,
                height: 80,
              ),
            ),
            Text("Basic UI/UX Design",
                textAlign: TextAlign.left, style: TextStyle(fontSize: 11)),
            Text("Mentor Rabaitul Azad",
                style: TextStyle(fontSize: 9, color: Colors.grey)),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(Icons.play_circle_outline,
                        size: 15, color: Colors.grey),
                    Text("12 Module",
                        style: TextStyle(fontSize: 9, color: Colors.grey)),
                  ],
                ),
                SizedBox(
                  width: 12,
                ),
                Row(
                  children: [
                    Icon(Icons.timer, size: 15, color: Colors.grey),
                    Text("22 Days",
                        style: TextStyle(fontSize: 8, color: Colors.grey)),
                  ],
                ),
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
                  child: const Text("VIEW COURSE",
                      style: TextStyle(
                          fontSize: 10, fontWeight: FontWeight.w400))),
            )
          ]),
    );
  }
}
