import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:testproj/screens/home_page.dart';
import 'package:testproj/screens/schedule_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int bottomNavIndex = 0;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);
    return MaterialApp(
        title: 'Flutter Demo',
        themeMode: ThemeMode.light,
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          // This is the theme of your application.
          //
          // TRY THIS: Try running your application with "flutter run". You'll see
          // the application has a purple toolbar. Then, without quitting the app,
          // try changing the seedColor in the colorScheme below to Colors.green
          // and then invoke "hot reload" (save your changes or press the "hot
          // reload" button in a Flutter-supported IDE, or press "r" if you used
          // the command line to start the app).
          //
          // Notice that the counter didn't reset back to zero; the application
          // state is not lost during the reload. To reset the state, use hot
          // restart instead.
          //
          // This works for code too, not just values: Most code changes can be
          // tested with just a hot reload.
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: Scaffold(
          backgroundColor: Colors.white,
          bottomNavigationBar: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: GNav(
                gap: 8,
                color: Colors.grey.shade500,
                tabBackgroundColor: Colors.blue.shade100,
                activeColor: Colors.blue,
                tabBorderRadius: 20,
                padding: const EdgeInsets.all(20),
                onTabChange: (value) {
                  setState(() {
                    bottomNavIndex = value;
                  });
                },
                tabs: const [
                  GButton(
                    icon: FontAwesomeIcons.home,
                    text: 'Home',
                  ),
                  GButton(
                    icon: FontAwesomeIcons.calendar,
                    text: 'Schedule',
                  ),
                  GButton(
                    icon: FontAwesomeIcons.message,
                    text: 'Chat',
                  ),
                  GButton(
                    icon: Icons.person_2_outlined,
                    text: 'Contacts',
                  )
                ]),
          ),
          body: SafeArea(
            child: selectedWidget(bottomNavIndex),
          ),
        ));
  }

  Widget selectedWidget(index) {
    switch (index) {
      case 0:
        return const HomePage();
        break;
      case 1:
        return const SchedulePage();
        break;
      case 2:
        return Center(
          child: Text("Chats"),
        );
        break;
      case 3:
        return Center(
          child: Text("Contacts"),
        );
        break;
      default:
        return const HomePage();
    }
  }
}
