import 'dart:math';

import 'package:auth_ui/screens/auth_screen.dart';
import 'package:auth_ui/screens/welcome_mentor.dart';
import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

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
              const SizedBox(height: 113.5),
              const Image(
                image: AssetImage(
                  "assets/images/logo_black.png",
                ),
                width: 228,
              ),
              const SizedBox(height: 50),
              Container(
                width: 338,
                height: 56,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(28),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.3),
                      offset: const Offset(0, 3),
                      blurRadius: 8.5,
                    ),
                  ],
                ),
                child: MaterialButton(
                  onPressed: () {
                    // Handle button tap
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const AuthScreen(),
                      ),
                    );
                  },
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(28),
                  ),
                  color: const Color(0xFF056A67),
                  child: const Text(
                    'Get Started',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 34),
              Container(
                width: 338,
                height: 56,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(28),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.3),
                      offset: const Offset(0, 3),
                      blurRadius: 8.5,
                    ),
                  ],
                ),
                child: MaterialButton(
                  onPressed: () {
                    // Handle button tap
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => WelcomeMentor()));
                  },
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(28),
                      side: const BorderSide(
                          color: Color.fromRGBO(55, 237, 129, 1))),
                  color: const Color(0xFFFFFFFF),
                  child: const Text(
                    'Apply As Mentor',
                    style: TextStyle(
                      color: Color(0xFF056A67),
                      fontSize: 17,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 143),
              RichText(
                  textAlign: TextAlign.center,
                  text: const TextSpan(
                      style: TextStyle(
                          color: Color.fromRGBO(41, 41, 41, 1), fontSize: 13),
                      children: [
                        TextSpan(
                          text: "A product of\n",
                        ),
                        TextSpan(
                          style: TextStyle(
                            color: Color.fromRGBO(5, 106, 103, 1),
                            fontWeight: FontWeight.bold,
                          ),
                          text: "Gigfolioo Technologies Private Limited",
                        ),
                      ])),
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
          toolbarHeight: 150,
          backgroundColor:
              Colors.transparent, // Make the AppBar background transparent
          elevation: 0, // Remove the AppBar elevation shadow
          title: const Column(
            children: [
              Image(image: AssetImage("assets/images/greenCloud.png")),
              SizedBox(
                height: 50,
              ),
              Text(
                'WELCOME TO',
                style: TextStyle(fontSize: 24),
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
