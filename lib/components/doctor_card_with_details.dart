import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DoctorCardWithDetails extends StatelessWidget {
  const DoctorCardWithDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
          color: Colors.grey.shade50, borderRadius: BorderRadius.circular(20)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                "Near Doctor",
                style: GoogleFonts.poppins(
                    fontSize: 25, fontWeight: FontWeight.w600),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 40,
                    backgroundColor: Colors.blue,
                    child: ClipOval(
                      child: Image.asset("assets/images/doctor2.jpeg"),
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Dr. Joseph Brosito",
                        style: GoogleFonts.poppins(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Dental Specialist",
                        style: GoogleFonts.poppins(
                            fontSize: 16, color: Colors.grey.shade500),
                      )
                    ],
                  ),
                ],
              ),
              Row(
                children: [
                  Icon(
                    FontAwesomeIcons.locationDot,
                    color: Colors.grey.shade500,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    "1.2 KM",
                    style: TextStyle(color: Colors.grey.shade500, fontSize: 18),
                  )
                ],
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          const Divider(),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                children: [
                  const Icon(
                    FontAwesomeIcons.clock,
                    color: Colors.orange,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    "4,8 (120 Reviews)",
                    style:
                        GoogleFonts.poppins(fontSize: 18, color: Colors.orange),
                  )
                ],
              ),
              Row(
                children: [
                  const Icon(
                    FontAwesomeIcons.clock,
                    color: Colors.blue,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Open at 17:00",
                    style: GoogleFonts.poppins(fontSize: 18),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
