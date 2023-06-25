import 'package:flutter/material.dart';

class FaqCard extends StatelessWidget {
  const FaqCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side: const BorderSide(
              color: Color.fromRGBO(5, 106, 103, 1), width: 1)),
      child: const ExpansionTile(
        collapsedShape: RoundedRectangleBorder(
          side: BorderSide.none,
        ),
        shape: RoundedRectangleBorder(
          side: BorderSide.none,
        ),
        title: Text("What is this program about?",
            style:
                TextStyle(fontSize: 14, color: Color.fromRGBO(5, 106, 103, 1))),
        trailing: Icon(
          Icons.arrow_circle_up_rounded,
          color: Color.fromRGBO(5, 106, 103, 1),
        ),
        childrenPadding: EdgeInsets.only(left: 20, bottom: 10),
        children: [
          Text("sdfsdfsd sfhsdjf sdfsdf sdf sdhfusdif sdf sdufsdfusdhfudsfs  ",
              style: TextStyle(fontSize: 12, color: Colors.grey))
        ],
      ),
    );
  }
}
