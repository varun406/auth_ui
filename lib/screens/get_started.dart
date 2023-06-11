import 'package:auth_ui/screens/layout_screen.dart';
import 'package:auth_ui/screens/verify_otp.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class GetStarted extends StatefulWidget {
  const GetStarted({super.key});

  @override
  State<GetStarted> createState() => _GetStartedState();
}

class _GetStartedState extends State<GetStarted> {
  final formKey = GlobalKey<FormState>();
  String name = "";
  bool isVisible = true;

  bool isOTPverified = true;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 40, vertical: 25),
        child: isOTPverified
            ? Form(
                key: formKey,
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  physics: BouncingScrollPhysics(),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Join the Top 1% community.",
                        style: TextStyle(
                            fontSize: 21, fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                            prefixIcon: const Icon(Icons.lock_outline),
                            labelText: "Full Name"),
                        validator: (value) {
                          if (value!.isEmpty ||
                              !RegExp(r'[^\d \W]$').hasMatch(value!)) {
                            return "Enter correct name";
                          } else {
                            return null;
                          }
                        },
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.phone_android_outlined),
                            labelText: "Mobile Number"),
                        validator: (value) {
                          if (value!.isEmpty ||
                              !RegExp(r'^[+]*[(]{0,1}[0-9]{1,4}[)]{0,1}[-\s\./0-9]+$')
                                  .hasMatch(value!)) {
                            return "Enter correct mobile number";
                          } else {
                            return null;
                          }
                        },
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                            prefixIcon: const Icon(Icons.email_outlined),
                            labelText: "Email Address"),
                        validator: (value) {
                          if (value!.isEmpty ||
                              !RegExp(r'.@+.[.com]').hasMatch(value!)) {
                            return "Enter correct email";
                          } else {
                            return null;
                          }
                        },
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        obscureText: isVisible,
                        decoration: InputDecoration(
                            prefixIcon: const Icon(Icons.lock_outline),
                            suffixIcon: IconButton(
                                onPressed: () {
                                  setState(() {
                                    isVisible = !isVisible;
                                  });
                                },
                                icon: isVisible
                                    ? Icon(Icons.visibility_off)
                                    : Icon(Icons.visibility)),
                            labelText: "Password"),
                        validator: (value) {
                          if (value!.isEmpty ||
                              !RegExp(r'^.*(?=.{8,})(?=.*[a-zA-Z])(?=.*\d)(?=.*[!#@$%&? "]).*$')
                                  .hasMatch(value!)) {
                            return "Enter correct password";
                          } else {
                            return null;
                          }
                        },
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text('Forget password?'),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                          width: double.infinity,
                          height: 50,
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.green,
                                  foregroundColor: Colors.white),
                              onPressed: () {
                                if (formKey.currentState!.validate()) {
                                  setState(() {
                                    isOTPverified = false;
                                  });
                                }
                              },
                              child: Text("Create Account Now"))),
                      SizedBox(
                        height: 10,
                      ),
                      RichText(
                          textAlign: TextAlign.center,
                          text: const TextSpan(
                              style:
                                  TextStyle(color: Colors.black, fontSize: 13),
                              children: [
                                TextSpan(
                                  text:
                                      "By creating an account, you agree to Wasty ",
                                ),
                                TextSpan(
                                  style: TextStyle(color: Colors.green),
                                  text: "Terms of use ",
                                ),
                                TextSpan(
                                  text: "and ",
                                ),
                                TextSpan(
                                  style: TextStyle(color: Colors.green),
                                  text: "Privacy policy",
                                ),
                              ])),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Expanded(
                              child: Container(
                                  margin: const EdgeInsets.only(right: 20.0),
                                  child: const Divider(
                                    color: Colors.black,
                                    height: 36,
                                  )),
                            ),
                            Text(
                              "or connect with",
                            ),
                            Expanded(
                              child: Container(
                                  margin: const EdgeInsets.only(left: 15.0),
                                  child: Divider(
                                    color: Colors.black,
                                    height: 36,
                                  )),
                            ),
                          ]),
                      Container(
                        child: Row(
                          children: [
                            Expanded(
                              child: MaterialButton(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 15, vertical: 15),
                                  elevation: 2,
                                  onPressed: () {},
                                  color: Colors.white,
                                  child: const Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      FaIcon(
                                        FontAwesomeIcons.google,
                                        size: 20,
                                      ),
                                      Text('Google'),
                                    ],
                                  )),
                            ),
                            const SizedBox(width: 20),
                            Expanded(
                              child: MaterialButton(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 15, vertical: 15),
                                  elevation: 2,
                                  onPressed: () {},
                                  color: Colors.white,
                                  child: const Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      FaIcon(
                                        FontAwesomeIcons.linkedinIn,
                                        size: 20,
                                      ),
                                      Text('LinkedIn'),
                                    ],
                                  )),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              )
            : VerifyOTP());
  }
}
