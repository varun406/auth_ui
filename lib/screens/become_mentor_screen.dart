import 'package:flutter/material.dart';

class BecomeMentor extends StatelessWidget {
  const BecomeMentor({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: double.infinity,
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 300,
            color: Colors.green,
            child: Image.asset(
              "assets/logo.png",
              width: 50,
              height: 70,
              color: Colors.white,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(children: [
              const Text(
                "Make a difference on a global scale by",
                style: TextStyle(fontSize: 14),
              ),
              const Text(
                "Becoming a Mentor",
                style: TextStyle(fontSize: 21, fontWeight: FontWeight.w600),
              ),
              SizedBox(
                child: Stack(
                  children: [
                    Container(
                      width: 250,
                      height: 350,
                      padding: const EdgeInsets.only(bottom: 7),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(width: 3, color: Colors.white),
                          image: const DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                                "https://images.unsplash.com/photo-1607990281513-2c110a25bd8c?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OXx8dGVhY2hlciUyMG1hbnxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60"),
                          )),
                    ),
                    ElevatedButton(
                        onPressed: () {}, child: const Text("Apply As Mentor"))
                  ],
                ),
              )
            ]),
          ),
        ],
      ),
    );
  }
}
