import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:testproj/components/category_button.dart';

class CategoryBar extends StatelessWidget {
  const CategoryBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          CategoryButton(
            text: "Covid 19",
            iconData: FontAwesomeIcons.virusCovid,
          ),
          CategoryButton(iconData: FontAwesomeIcons.userDoctor, text: "Doctor"),
          CategoryButton(
              iconData: FontAwesomeIcons.prescriptionBottleMedical,
              text: "Medicine"),
          CategoryButton(iconData: FontAwesomeIcons.hospital, text: "Hospital")
        ],
      ),
    );
  }
}
