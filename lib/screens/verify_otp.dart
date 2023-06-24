import 'package:auth_ui/screens/home_screen.dart';
import 'package:flutter/material.dart';

class VerifyOTP extends StatefulWidget {
  const VerifyOTP({super.key});

  @override
  State<VerifyOTP> createState() => _VerifyOTPState();
}

class _VerifyOTPState extends State<VerifyOTP> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Verify OTP",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 15,
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
                  offset:
                      const Offset(0, 3), // changes the position of the shadow
                ),
              ],
            ),
            child: Container(
              color: Colors.white,
              child: TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(80),
                    borderSide: BorderSide.none,
                  ),
                  prefixIcon: Icon(
                    Icons.lock,
                    color: Colors.green,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 35,
          ),
          SizedBox(
            width: double.infinity,
            height: 53,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromRGBO(77, 141, 110, 1),
                    foregroundColor: Colors.white),
                onPressed: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HomeScreen()));
                },
                child: const Text("Verify Now")),
          )
        ],
      ),
    );
  }
}
