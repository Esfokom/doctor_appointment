import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_animate/flutter_animate.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Animate(
            effects: const [
              SlideEffect(
                  begin: Offset(0, -1),
                  end: Offset(0, 0),
                  duration: Duration(milliseconds: 300))
            ],
            child: Container(
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
                        style: GoogleFonts.poppins(
                            color: Colors.black38, fontSize: 20),
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
                  const CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.blue,
                    child: Icon(
                      Icons.account_circle,
                      color: Colors.orange,
                      size: 50,
                    ),
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Animate(
            effects: const [
              SlideEffect(
                  begin: Offset(1, 0),
                  end: Offset(0, 0),
                  duration: Duration(milliseconds: 300))
            ],
            child: Container(
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
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Animate(
            effects: const [ShakeEffect(duration: Duration(milliseconds: 300))],
            child: Container(
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                color: Colors.grey.shade100,
                borderRadius: BorderRadius.circular(25),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(
                    Icons.search,
                    color: Colors.grey.shade500,
                    size: 40,
                  ),
                  Text(
                    "Search doctor or health issue",
                    style: GoogleFonts.poppins(
                        color: Colors.grey.shade500, fontSize: 22),
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Animate(
            effects: const [
              ScaleEffect(
                  begin: Offset(0.80, 0.80),
                  end: Offset(1, 1),
                  duration: Duration(milliseconds: 300))
            ],
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.grey.shade50,
                        radius: 40,
                        child: const Icon(
                          FontAwesomeIcons.virusCovid,
                          color: Colors.blue,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Covid 19",
                        style: GoogleFonts.poppins(
                            color: Colors.grey.shade500, fontSize: 18),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.grey.shade50,
                        radius: 40,
                        child: const Icon(
                          FontAwesomeIcons.userDoctor,
                          color: Colors.blue,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Doctor",
                        style: TextStyle(
                            color: Colors.grey.shade500, fontSize: 18),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.grey.shade50,
                        radius: 40,
                        child: const Icon(
                          FontAwesomeIcons.prescriptionBottleMedical,
                          color: Colors.blue,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Medicine",
                        style: GoogleFonts.poppins(
                            color: Colors.grey.shade500, fontSize: 18),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.grey.shade50,
                        radius: 40,
                        child: const Icon(
                          FontAwesomeIcons.hospital,
                          color: Colors.blue,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Hospital",
                        style: TextStyle(
                            color: Colors.grey.shade500, fontSize: 18),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Container(
            padding: const EdgeInsets.all(20),
            margin: const EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
                color: Colors.grey.shade50,
                borderRadius: BorderRadius.circular(20)),
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
                          style: TextStyle(
                              color: Colors.grey.shade500, fontSize: 18),
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
                          style: GoogleFonts.poppins(
                              fontSize: 18, color: Colors.orange),
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
          )
        ],
      ),
    );
  }
}
