import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DoctorCardWithArrow extends StatelessWidget {
  const DoctorCardWithArrow({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(25),
      margin: const EdgeInsets.symmetric(horizontal: 25),
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
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
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w700),
                      ),
                      Text(
                        "General Doctor",
                        style: GoogleFonts.poppins(
                            color: Colors.grey.shade100, fontSize: 15),
                      )
                    ],
                  )
                ],
              ),
              const Icon(
                Icons.chevron_right,
                color: Colors.white,
                size: 50,
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const Divider(
            thickness: 1,
            color: Colors.white60,
            endIndent: 5,
            indent: 5,
          ),
          const SizedBox(
            height: 10,
          ),
          const Row(
            children: [
              Expanded(
                  child: Row(
                children: [
                  Icon(
                    Icons.calendar_month,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Sunday, 12 June",
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  )
                ],
              )),
              Expanded(
                  child: Row(
                children: [
                  Icon(
                    Icons.access_time,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "11:00 - 12:00 AM",
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  )
                ],
              ))
            ],
          )
        ],
      ),
    );
  }
}
