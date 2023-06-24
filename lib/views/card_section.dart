import 'package:flutter/material.dart';

class CardSection extends StatelessWidget {
  Widget card;
  String sectionTitle;

  CardSection({super.key, required this.card, required this.sectionTitle});
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
                TextButton(
                    onPressed: () {},
                    child: const Text(
                      "See All",
                      style: TextStyle(fontSize: 12),
                    ))
              ],
            ),
          ),
          LimitedBox(
            maxHeight: 155,
            child: ListView.builder(
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(left: 15, bottom: 5, top: 5),
                  child: card,
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
