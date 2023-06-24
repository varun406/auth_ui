import 'package:auth_ui/screens/get_started.dart';
import 'package:auth_ui/screens/sign_in_screen.dart';
import 'package:flutter/material.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(183.53),
          child: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                // colors: [Color(0x056A6700), Color(0x37ED8100)],
                colors: [
                  Color.fromRGBO(55, 237, 129, 1),
                  Color.fromRGBO(5, 106, 103, 1)
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            child: AppBar(
              flexibleSpace: FlexibleSpaceBar(
                title: Column(
                  children: [
                    const SizedBox(
                      height: 103,
                    ),
                    Image.asset(
                      'assets/logo_white.png',
                      height: 63,
                      width: 228,
                    ),
                  ],
                ),
              ),
              centerTitle: true,
              backgroundColor: Colors
                  .transparent, // Set the background color of the AppBar to transparent
              elevation: 0, // Remove the shadow below the AppBar
            ),
          ),
        ),
        body: Column(
          children: [
            Container(
              height: 62,
              color: Colors.white,
              child: TabBar(
                  labelColor: Colors.white,
                  // indicator: BoxDecoration(
                  //   color:
                  //       Colors.white, // Set the color of the TabBar indicator
                  // ),
                  indicatorColor: const Color.fromRGBO(77, 141, 110, 1),
                  tabs: [
                    Tab(
                      child: Container(
                        width: MediaQuery.sizeOf(context).width / 2,
                        alignment: Alignment.center,
                        child: const Text(
                          "Sign In",
                          style:
                              TextStyle(color: Color.fromRGBO(77, 141, 110, 1)),
                        ),
                      ),
                    ),
                    Tab(
                      child: Container(
                        width: MediaQuery.sizeOf(context).width / 2,
                        alignment: Alignment.center,
                        child: const Text(
                          "Get Started",
                          style:
                              TextStyle(color: Color.fromRGBO(77, 141, 110, 1)),
                        ),
                      ),
                    ),
                  ]),
            ),
            const Expanded(child: TabBarView(children: [SignIn(), GetStarted()])),
          ],
        ),
      ),
    );
  }
}
