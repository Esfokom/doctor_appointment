import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoryButton extends StatelessWidget {
  const CategoryButton({super.key, required this.iconData, required this.text});

  final IconData iconData;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          child: CircleAvatar(
            backgroundColor: Colors.grey.shade50,
            radius: 40,
            child: Icon(
              iconData,
              color: Colors.blue,
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          text,
          style: GoogleFonts.poppins(color: Colors.grey.shade500, fontSize: 18),
        )
      ],
    );
  }
}
