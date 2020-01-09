import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tic_tac_toe_flutter/ui/splash_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          brightness: Brightness.light,
          fontFamily: GoogleFonts.montserrat().fontFamily),
      darkTheme: ThemeData(
          brightness: Brightness.dark,
          fontFamily: GoogleFonts.montserrat().fontFamily),
      home: SplashScreen(),
    );
  }
}
