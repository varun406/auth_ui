import 'package:auth_ui/screens/home_screen.dart';
import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  String heading;
  String subHeading = "Category";
  Widget direction;

  Header(
      {super.key,
      required this.heading,
      required this.subHeading,
      required this.direction});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.2,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Color.fromRGBO(5, 106, 103, 1),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(subHeading,
                    style: TextStyle(fontSize: 18, color: Colors.greenAccent)),
                Text(heading,
                    style: TextStyle(fontSize: 21, color: Colors.white)),
              ],
            ),
            IconButton(
              icon: Icon(
                Icons.arrow_circle_left_sharp,
                color: Colors.greenAccent,
                size: 35,
              ),
              onPressed: () {
                Navigator.pop(context,
                    MaterialPageRoute(builder: (context) => direction));
              },
            )
          ],
        ),
      ),
    );
  }
}
