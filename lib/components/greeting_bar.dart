import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class GreetingBar extends StatelessWidget {
  const GreetingBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 40, left: 20, right: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Hello,",
                textAlign: TextAlign.left,
                style: GoogleFonts.poppins(color: Colors.black38, fontSize: 20),
              ),
              Text(
                "Hi James",
                textAlign: TextAlign.left,
                style: GoogleFonts.poppins(
                    fontSize: 25,
                    color: Colors.blue.shade900,
                    fontWeight: FontWeight.w900),
              )
            ],
          ),
          CircleAvatar(
            radius: 40,
            backgroundColor: Colors.blue,
            child: Lottie.asset(
              'assets/lottie/smile.json',
            ),
          )
        ],
      ),
    );
  }
}
