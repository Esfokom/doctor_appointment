import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class DoctorCard extends StatelessWidget {
  const DoctorCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
          color: Colors.grey.shade50, borderRadius: BorderRadius.circular(20)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 40,
                    child: ClipOval(
                      child: Image.asset("assets/images/doctor.jpeg"),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Dr. Imran Syahir",
                        style: GoogleFonts.poppins(
                            fontSize: 20, fontWeight: FontWeight.w700),
                      ),
                      Text(
                        "General Doctor",
                        style: GoogleFonts.poppins(
                            color: Colors.grey.shade500, fontSize: 15),
                      )
                    ],
                  )
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Divider(
            thickness: 1,
            color: Colors.grey.shade500,
            endIndent: 5,
            indent: 5,
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Expanded(
                  child: Row(
                children: [
                  Icon(
                    Icons.calendar_month,
                    color: Colors.grey.shade500,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Sunday, 12 June",
                    style: GoogleFonts.poppins(
                        color: Colors.grey.shade500, fontSize: 15),
                  )
                ],
              )),
              Expanded(
                  child: Row(
                children: [
                  Icon(
                    Icons.access_time,
                    color: Colors.grey.shade500,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    "11:00 - 12:00 AM",
                    style: GoogleFonts.poppins(
                        color: Colors.grey.shade500, fontSize: 15),
                  )
                ],
              ))
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            height: 40,
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.blue.shade100,
                borderRadius: BorderRadius.circular(25)),
            child: Center(
              child: Text(
                "Detail",
                style: GoogleFonts.poppins(
                    color: Colors.blue.shade500,
                    fontSize: 18,
                    fontWeight: FontWeight.w500),
              ),
            ),
          )
        ],
      ),
    );
  }
}
