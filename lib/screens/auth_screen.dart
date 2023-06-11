import 'package:auth_ui/screens/get_started.dart';
import 'package:auth_ui/screens/sign_in_screen.dart';
import 'package:auth_ui/screens/verify_otp.dart';
import 'package:flutter/material.dart';

class AuthScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(150.0),
          child: AppBar(
            backgroundColor: Colors.green[600],
            flexibleSpace: FlexibleSpaceBar(
                title: Image.asset(
              'assets/logo.png',
              color: Colors.white,
            )),
            centerTitle: true,
            bottom: const TabBar(indicatorColor: Colors.white, tabs: [
              Tab(
                child: Text(
                  "Sign In",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Tab(
                child: Text(
                  "Get Started",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ]),
          ),
        ),
        body: TabBarView(children: [SignIn(), GetStarted()]),
      ),
    );
  }
}
