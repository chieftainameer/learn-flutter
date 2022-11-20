import 'package:firebase_app/screens/home_screen.dart';
import 'package:firebase_app/screens/location_details.dart';
import 'package:firebase_app/screens/login_screen.dart';
import 'package:firebase_app/screens/review_screen.dart';
import 'package:firebase_app/screens/stack_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const App());
}


class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      darkTheme: ThemeData(
        brightness: Brightness.dark
      ),
      theme: ThemeData( 
        primarySwatch: Colors.deepPurple,
        fontFamily: GoogleFonts.lato().fontFamily,
        primaryTextTheme: GoogleFonts.latoTextTheme()
      ),
      initialRoute: "/location",
      routes: {
        "/" :(context) => HomeScreen(),
        '/login' :(context) => LoginScreen(),
        '/details':(context) => ReviewScreen(),
        '/stack':(context) => StackScreen(),
        '/location':(context) => LocationDetails(),
      },
    );
  }
}