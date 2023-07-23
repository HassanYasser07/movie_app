import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movie_app_ui/vievs/onboarding_screen.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      theme: ThemeData(
        fontFamily: GoogleFonts.openSans().fontFamily,
      ),
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: SafeArea(child: OnboardingScreen()),
      );

  }
}
