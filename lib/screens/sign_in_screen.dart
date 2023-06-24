import 'package:flutter/material.dart';

import 'layout_screen.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final formKey = GlobalKey<FormState>();
  String name = "";
  bool isVisible = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 25),
      child: Form(
        key: formKey,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                alignment: Alignment.centerLeft,
                child: const Text(
                  "Login your account",
                  textAlign: TextAlign.left,
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
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.phone_android_outlined),
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
                    obscureText: isVisible,
                    decoration: InputDecoration(
                        fillColor: Colors.white,
                        prefixIcon: const Icon(Icons.lock_outline),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
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
              const SizedBox(
                height: 29,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text('Forget password?'),
                ],
              ),
              const SizedBox(
                height: 24,
              ),
              SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: const Color.fromRGBO(5, 106, 103, 1),
                          foregroundColor: Colors.white),
                      onPressed: () {
                        if (formKey.currentState!.validate()) {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const LayoutScreen()));
                        }
                      },
                      child: const Text("Login"))),
              const SizedBox(
                height: 33,
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
                      "or create account",
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
              const SizedBox(
                height: 33,
              ),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromRGBO(5, 106, 103, 1),
                        foregroundColor: Colors.white),
                    onPressed: () {},
                    child: const Text("Create Account Now")),
              )
            ],
          ),
        ),
      ),
    );
  }
}
