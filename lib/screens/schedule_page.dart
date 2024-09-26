import 'package:flutter/material.dart';
import 'package:testproj/components/doctor_card.dart';

class SchedulePage extends StatefulWidget {
  const SchedulePage({super.key});

  @override
  State<SchedulePage> createState() => _SchedulePageState();
}

class _SchedulePageState extends State<SchedulePage> {
  final PageController _pageController = PageController(initialPage: 0);
  final ScrollController _scrollController = ScrollController();
  int _selectedIndex = 0;

  void _scrollToCenter(int index, double screenWidth) {
    double scrollPosition =
        (index * 250.0) - (screenWidth / 2) + 125.0; // Center the tab
    _scrollController.animateTo(
      scrollPosition,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Column(
      children: [
        const SizedBox(
          height: 10,
        ),
        SizedBox(
          height: 50,
          child: LayoutBuilder(
            builder: (context, constraints) {
              return SingleChildScrollView(
                controller: _scrollController,
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(3, (index) {
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          _selectedIndex = index;
                          _pageController.animateToPage(
                            index,
                            duration: const Duration(milliseconds: 300),
                            curve: Curves.easeInOut,
                          );
                          _scrollToCenter(index, screenWidth);
                        });
                      },
                      child: AnimatedContainer(
                        duration: const Duration(milliseconds: 300),
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        alignment: Alignment.center,
                        margin: const EdgeInsets.symmetric(horizontal: 8),
                        width: 250,
                        // Fixed width for each tab
                        decoration: BoxDecoration(
                          color: _selectedIndex == index
                              ? Colors.blue.withOpacity(0.1)
                              : Colors.transparent,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Text(
                          _getTabText(index),
                          style: TextStyle(
                            color: _selectedIndex == index
                                ? Colors.blue
                                : Colors.grey,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    );
                  }),
                ),
              );
            },
          ),
        ),
        Expanded(
          child: PageView(
            controller: _pageController,
            onPageChanged: (index) {
              setState(() {
                _selectedIndex = index;
                _scrollToCenter(index, screenWidth);
              });
            },
            children: const <Widget>[
              SingleChildScrollView(
                child: Column(
                  children: [
                    DoctorCard(),
                    DoctorCard(),
                    DoctorCard(),
                    DoctorCard()
                  ],
                ),
              ),
              SingleChildScrollView(
                child: Column(
                  children: [DoctorCard(), DoctorCard()],
                ),
              ),
              Center(child: Text('No Missed Schedule')),
            ],
          ),
        ),
      ],
    );
  }

  String _getTabText(int index) {
    switch (index) {
      case 0:
        return 'Upcoming schedule';
      case 1:
        return 'Completed schedule';
      case 2:
        return 'Missed schedule';
      default:
        return '';
    }
  }
}
