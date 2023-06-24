import 'package:flutter/material.dart';

class ExpertsCard extends StatelessWidget {
  const ExpertsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            width: 110,
            height: 140,
            padding: const EdgeInsets.only(bottom: 7),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(width: 3, color: Colors.white),
                image: const DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      "https://images.unsplash.com/photo-1607990281513-2c110a25bd8c?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OXx8dGVhY2hlciUyMG1hbnxlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=500&q=60"),
                )),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text("Rubaitul Azad",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w500)),
                  const Text("Rubaitul Azad",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontSize: 10)),
                  Container(
                    height: 15,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color:
                              const Color.fromARGB(255, 21, 137, 41).withOpacity(0.7),
                          blurRadius: 15.0,
                        ),
                      ],
                    ),
                  )
                ]),
          ),
          Positioned(
              bottom: 0,
              child: Container(
                width: 50,
                height: 25,
                padding: const EdgeInsets.symmetric(vertical: 5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: const [BoxShadow(color: Colors.grey, blurRadius: 10)],
                  color: Colors.white,
                ),
                child: Image.network(
                    "https://images.unsplash.com/photo-1614851099518-055a1000e6d5?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mjd8fGxvZ298ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=500&q=60"),
              ))
        ],
      ),
    );
  }
}
