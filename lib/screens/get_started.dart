import 'package:auth_ui/screens/verify_otp.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
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
        padding: const EdgeInsets.symmetric(
          horizontal: 40,
          vertical: 25,
        ),
        child: isOTPverified
            ? Form(
                key: formKey,
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  physics: const BouncingScrollPhysics(),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Join the Top 1% community.",
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Color.fromRGBO(41, 41, 41, 1),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width - 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.16),
                              spreadRadius: 5,
                              blurRadius: 8,
                              offset: const Offset(
                                  0, 3), // changes the position of the shadow
                            ),
                          ],
                        ),
                        child: Container(
                          color: Colors.white,
                          child: TextFormField(
                            decoration: InputDecoration(
                                prefixIcon: const Icon(Icons.lock_outline),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(80),
                                  borderSide: BorderSide.none,
                                ),
                                labelText: "Full Name"),
                            validator: (value) {
                              if (value!.isEmpty ||
                                  !RegExp(r'[^\d \W]$').hasMatch(value)) {
                                return "Enter correct name";
                              } else {
                                return null;
                              }
                            },
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 17,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width - 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.16),
                              spreadRadius: 5,
                              blurRadius: 8,
                              offset: const Offset(
                                  0, 3), // changes the position of the shadow
                            ),
                          ],
                        ),
                        child: Container(
                          color: Colors.white,
                          child: TextFormField(
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                                prefixIcon:
                                    const Icon(Icons.phone_android_outlined),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(80),
                                  borderSide: BorderSide.none,
                                ),
                                labelText: "Mobile Number"),
                            validator: (value) {
                              if (value!.isEmpty ||
                                  !RegExp(r'^[+]*[(]{0,1}[0-9]{1,4}[)]{0,1}[-\s\./0-9]+$')
                                      .hasMatch(value)) {
                                return "Enter correct mobile number";
                              } else {
                                return null;
                              }
                            },
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 17,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width - 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.16),
                              spreadRadius: 5,
                              blurRadius: 8,
                              offset: const Offset(
                                  0, 3), // changes the position of the shadow
                            ),
                          ],
                        ),
                        child: Container(
                          color: Colors.white,
                          child: TextFormField(
                            decoration: InputDecoration(
                                prefixIcon: const Icon(Icons.email_outlined),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(80),
                                  borderSide: BorderSide.none,
                                ),
                                labelText: "Email Address"),
                            validator: (value) {
                              if (value!.isEmpty ||
                                  !RegExp(r'.@+.[.com]').hasMatch(value)) {
                                return "Enter correct email";
                              } else {
                                return null;
                              }
                            },
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 17,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width - 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.16),
                              spreadRadius: 5,
                              blurRadius: 8,
                              offset: const Offset(
                                  0, 3), // changes the position of the shadow
                            ),
                          ],
                        ),
                        child: Container(
                          color: Colors.white,
                          child: TextFormField(
                            obscureText: isVisible,
                            decoration: InputDecoration(
                                prefixIcon: const Icon(Icons.lock_outline),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(80),
                                  borderSide: BorderSide.none,
                                ),
                                suffixIcon: IconButton(
                                    onPressed: () {
                                      setState(() {
                                        isVisible = !isVisible;
                                      });
                                    },
                                    icon: isVisible
                                        ? const Icon(Icons.visibility_off)
                                        : const Icon(Icons.visibility)),
                                labelText: "Password"),
                            validator: (value) {
                              if (value!.isEmpty ||
                                  !RegExp(r'^.*(?=.{8,})(?=.*[a-zA-Z])(?=.*\d)(?=.*[!#@$%&? "]).*$')
                                      .hasMatch(value)) {
                                return "Enter correct password";
                              } else {
                                return null;
                              }
                            },
                          ),
                        ),
                      ),
                      // const SizedBox(
                      //   height: 17,
                      // ),
                      const SizedBox(
                        height: 17,
                      ),
                      SizedBox(
                          width: double.infinity,
                          height: 50,
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor:
                                      const Color.fromRGBO(5, 106, 103, 1),
                                  foregroundColor: Colors.white),
                              onPressed: () {
                                if (formKey.currentState!.validate()) {
                                  setState(() {
                                    isOTPverified = false;
                                  });
                                }
                              },
                              child: const Text("Create Account Now"))),
                      const SizedBox(
                        height: 10,
                      ),
                      RichText(
                          textAlign: TextAlign.center,
                          text: const TextSpan(
                              style: TextStyle(
                                  color: Color.fromRGBO(41, 41, 41, 1),
                                  fontSize: 13),
                              children: [
                                TextSpan(
                                  text:
                                      "By creating an account, you agree to Wasty ",
                                ),
                                TextSpan(
                                  style: TextStyle(
                                      color: Color.fromRGBO(5, 106, 103, 1)),
                                  text: "Terms of use ",
                                ),
                                TextSpan(
                                  text: "and ",
                                ),
                                TextSpan(
                                  style: TextStyle(
                                      color: Color.fromRGBO(5, 106, 103, 1)),
                                  text: "Privacy policy",
                                ),
                              ])),
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Expanded(
                              child: Container(
                                  margin: const EdgeInsets.only(right: 20.0),
                                  child: const Divider(
                                    color: Color.fromRGBO(41, 41, 41, 1),
                                    height: 36,
                                  )),
                            ),
                            const Text(
                              "or connect with",
                            ),
                            Expanded(
                              child: Container(
                                  margin: const EdgeInsets.only(left: 15.0),
                                  child: const Divider(
                                    color: Color.fromRGBO(41, 41, 41, 1),
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
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    // FaIcon(
                                    //   FontAwesomeIcons.google,
                                    //   size: 20,
                                    // ),
                                    SvgPicture.asset(
                                      'assets/images/google.svg',
                                      height: 20,
                                      width: 20,
                                    ),
                                    const Text('Google'),
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(width: 20),
                            Expanded(
                              child: MaterialButton(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 15, vertical: 15),
                                  elevation: 2,
                                  onPressed: () {},
                                  color: Colors.white,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      SvgPicture.asset(
                                        'assets/images/linkedin.svg',
                                        height: 20,
                                        width: 20,
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
            : const VerifyOTP());
  }
}
