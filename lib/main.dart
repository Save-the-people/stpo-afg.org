import 'package:flutter/material.dart';

import '../screens/desktop/about.dart';
import '../screens/desktop/contact.dart';
import '../screens/home_screen.dart';
import 'helpers/constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Save The People',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light().copyWith(
        appBarTheme: const AppBarTheme(backgroundColor: primaryColor),
      ),
      home: const HomeScreen(),
      routes: {
        HomeScreen.routeName: (ctx) => const HomeScreen(),
        AboutUs.routeName: (ctx) => const AboutUs(),
        ContactUs.routeName: (ctx) => const ContactUs(),
      },
    );
  }
}
