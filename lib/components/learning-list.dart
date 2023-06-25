import 'package:flutter/material.dart';

class LearningList extends StatelessWidget {
  dynamic list;
  LearningList({
    required this.list,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(vertical: 12),
        decoration: BoxDecoration(
            border: Border.all(color: Color.fromRGBO(5, 106, 103, 1)),
            borderRadius: BorderRadius.circular(20)),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 40,
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 7),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(19),
                      topLeft: Radius.circular(19)),
                  color: Color.fromRGBO(5, 106, 103, 1)),
              child: Text(list["title"],
                  style: TextStyle(color: Colors.white, fontSize: 16)),
            ),
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 7, vertical: 3),
                child: Column(
                  children: list["content"]
                      .map<Widget>((data) => Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text("\u2022",
                                  style: TextStyle(fontSize: 25, height: 1)),
                              SizedBox(
                                width: 3,
                              ),
                              Expanded(
                                child: Text(data,
                                    softWrap: true,
                                    maxLines: 2,
                                    style: TextStyle(fontSize: 10)),
                              )
                            ],
                          ))
                      .toList(),
                )),
          ],
        ));
  }
}
