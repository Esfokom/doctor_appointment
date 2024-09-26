import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
          Expanded(
            flex: 1,
            child: Icon(
              Icons.search,
              color: Colors.grey.shade500,
              size: 40,
            ),
          ),
          Expanded(
            flex: 7,
            child: TextField(
              style: GoogleFonts.poppins(
                  color: Colors.grey.shade500, fontSize: 22),
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintStyle: GoogleFonts.poppins(
                      color: Colors.grey.shade500, fontSize: 22),
                  hintText: "Search doctor or health issue"),
            ),
          ),
        ],
      ),
    );
  }
}
