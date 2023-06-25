import 'package:auth_ui/screens/category_screen.dart';
import 'package:auth_ui/screens/course_detail.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CardSection extends StatelessWidget {
  Widget card;
  Widget? seeAllRedirect;
  Widget? cardRedirect;
  String sectionTitle;

  CardSection(
      {super.key,
      required this.card,
      required this.sectionTitle,
      this.cardRedirect,
      this.seeAllRedirect});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  sectionTitle,
                  style: const TextStyle(fontSize: 15),
                ),
                seeAllRedirect != null
                    ? TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => seeAllRedirect!));
                        },
                        child: const Text(
                          "See All",
                          style: TextStyle(fontSize: 12),
                        ))
                    : Text("")
              ],
            ),
          ),
          LimitedBox(
            maxHeight: 155,
            child: ListView.builder(
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(left: 15, bottom: 5, top: 5),
                  child: InkWell(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => cardRedirect!)),
                      child: card),
                );
              },
              itemCount: 10,
              scrollDirection: Axis.horizontal,
            ),
          )
        ],
      ),
    );
  }
}
