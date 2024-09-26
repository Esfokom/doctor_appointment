import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:testproj/components/components.dart';

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
            child: const GreetingBar(),
          ),
          const SizedBox(
            height: 50,
          ),
          Animate(effects: const [
            SlideEffect(
                begin: Offset(1, 0),
                end: Offset(0, 0),
                duration: Duration(milliseconds: 300))
          ], child: const DoctorCardWithArrow()),
          const SizedBox(
            height: 30,
          ),
          Animate(
            effects: const [ShakeEffect(duration: Duration(milliseconds: 300))],
            child: const CustomSearchBar(),
          ),
          const SizedBox(
            height: 50,
          ),
          Animate(effects: const [
            ScaleEffect(
                begin: Offset(0.80, 0.80),
                end: Offset(1, 1),
                duration: Duration(milliseconds: 300))
          ], child: const CategoryBar()),
          const SizedBox(
            height: 40,
          ),
          const DoctorCardWithDetails()
        ],
      ),
    );
  }
}
