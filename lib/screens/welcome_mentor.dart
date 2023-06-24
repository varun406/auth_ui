import 'dart:math';

import 'package:flutter/material.dart';

class WelcomeMentor extends StatelessWidget {
  const WelcomeMentor({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Curved AppBar Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: const ParabolicWaveAppBar(), // Use the custom CurvedAppBar
        body: Center(
          child: Column(
            children: [
              RichText(
                  textAlign: TextAlign.center,
                  text: const TextSpan(
                      style: TextStyle(
                          color: Color.fromRGBO(41, 41, 41, 1), fontSize: 13),
                      children: [
                        TextSpan(
                          style: TextStyle(
                            color: Color.fromRGBO(41, 41, 41, 1),
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                          ),
                          text: "Make a difference on global scale by\n",
                        ),
                        TextSpan(
                          style: TextStyle(
                            color: Color.fromRGBO(0, 0, 0, 1),
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                          ),
                          text: "Becoming a Mentor",
                        ),
                      ])),
              SizedBox(
                height: 28,
              ),
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Image(
                    image: AssetImage('assets/images/rectangle_89.png'),
                    width: 297,
                    height: 444,
                  ),
                  Positioned(
                    bottom: -27,
                    left: 33, // Adjust this value to control the overlap
                    child: Container(
                      width: 226,
                      height: 55,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.green,
                        border: Border.all(
                          color: Colors.lightGreenAccent,
                          width: 1.0,
                        ),
                      ),
                      child: MaterialButton(
                        onPressed: () {
                          // Handle button tap
                        },
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        color: const Color(0xFF184D47),
                        child: const Text(
                          'Apply As Mentor',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ParabolicWaveAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  final double appBarHeight = 250.0;

  const ParabolicWaveAppBar(
      {super.key}); // Customize the height of the AppBar as needed

  @override
  Size get preferredSize => Size.fromHeight(appBarHeight);

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: ParabolicWaveAppBarClipper(),
      child: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color.fromRGBO(5, 106, 103, 1),
              Color.fromRGBO(55, 237, 129, 1),
            ], // Customize your gradient colors
          ),
        ),
        child: AppBar(
          toolbarHeight: 175,
          backgroundColor:
              Colors.transparent, // Make the AppBar background transparent
          elevation: 0, // Remove the AppBar elevation shadow
          title: const Column(
            children: [
              Image(image: AssetImage("assets/images/greenCloud.png")),
              SizedBox(
                height: 40,
              ),
              Image(
                image: AssetImage("assets/logo_white.png"),
                width: 228,
              ),
            ],
          ),
          centerTitle: true,
        ),
      ),
    );
  }
}

class ParabolicWaveAppBarClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(0, size.height * 0.65);

    final firstControlPoint = Offset(size.width * 0.289, size.height * 1.1);
    final firstEndPoint = Offset(size.width * 1 / 6, size.height * 0.75);
    final secondControlPoint = Offset(size.width * 3 / 4, size.height * 0.5);
    final secondEndPoint = Offset(size.width, size.height * 0.55);
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        secondEndPoint.dx, secondEndPoint.dy);

    // path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
    //     secondEndPoint.dx, secondEndPoint.dy);

    path.lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
